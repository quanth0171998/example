package com.poly.datn.service.impl;

import com.poly.datn.converter.PaymentHistoryConverter;
import com.poly.datn.repository.MaintenanceCardRepository;
import com.poly.datn.repository.PaymentHistoryRepository;
import com.poly.datn.repository.UserRepository;
import com.poly.datn.dto.StatisticRepairmanDTO;
import com.poly.datn.dto.TotalMoneyDTO;
import com.poly.datn.repository.BusinessInformationCustom;
import com.poly.datn.service.BusinessInformationService;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

@Service
public class BusinessInformationServiceImpl implements BusinessInformationService {

    private final BusinessInformationCustom businessInformationCustom;

    private final MaintenanceCardRepository maintenanceCardRepository;

    private final UserRepository userRepository;

    private final PaymentHistoryRepository paymentHistoryRepository;

    private final PaymentHistoryConverter paymentHistoryConverter;

    public BusinessInformationServiceImpl(BusinessInformationCustom businessInformationCustom, MaintenanceCardRepository maintenanceCardRepository, UserRepository userRepository, PaymentHistoryRepository paymentHistoryRepository, PaymentHistoryConverter paymentHistoryConverter) {
        this.businessInformationCustom = businessInformationCustom;
        this.maintenanceCardRepository = maintenanceCardRepository;
        this.userRepository = userRepository;
        this.paymentHistoryRepository = paymentHistoryRepository;
        this.paymentHistoryConverter = paymentHistoryConverter;
    }

    @Override
    public int getTotalCustomer() {
        String date = getDateNow();
        return businessInformationCustom.getTotalCustomer(date);
    }

    @Override
    public int getTotalMaintenanceCard() {
        String date = getDateNow();
        return businessInformationCustom.getTotalMaintenanceCard(date);
    }

    @Override
    public int getTotalMaintenanceCardSuccess() {
        String date = getDateNow();
        return businessInformationCustom.getTotalMaintenanceCardSuccess(date);
    }

    @Override
    public int getTotalMaintenanceCardSuccessNotPay() {
        String date = getDateNow();
        return businessInformationCustom.getTotalMaintenanceCardSuccessNotPay(date);
    }

    @Override
    public int getTotalMaintenanceCardSuccessPayed() {
        String date = getDateNow();
        return businessInformationCustom.getTotalMaintenanceCardSuccessPayed(date);
    }

    @Override
    public int getTotalMaintenanceCards(String startDate, String endDate) throws ParseException {
        SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy", Locale.ENGLISH);
        String strSDate = startDate;
        String strEDate = endDate;
        Date sDate = formatter.parse(startDate);
        Date eDate = formatter.parse(strEDate);
        Date eDate1 = new Date(eDate.getTime() + (1000 * 60 * 60 * 24));
        return maintenanceCardRepository.getTotalMaintenanceCard(sDate, eDate1);
    }

    @Override
    public BigDecimal getTotalMoney(String startDate, String endDate) throws ParseException {
        SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy", Locale.ENGLISH);
        String strSDate = startDate;
        String strEDate = endDate;
        Date sDate = formatter.parse(startDate);
        Date eDate = formatter.parse(strEDate);
        Date eDate1 = new Date(eDate.getTime() + (1000 * 60 * 60 * 24));
        //System.out.println(eDate1);
        BigDecimal bigDecimal = maintenanceCardRepository.getTotalMoney(sDate, eDate1);
        if(bigDecimal == null){
            bigDecimal = BigDecimal.valueOf(0);
        }
        return bigDecimal;
    }

    @Override
    public BigDecimal getTotalLiabilities(String startDate, String endDate) throws ParseException {
        SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy", Locale.ENGLISH);
        String strSDate = startDate;
        String strEDate = endDate;
        Date sDate = formatter.parse(startDate);
        Date eDate = formatter.parse(strEDate);
        Date eDate1 = new Date(eDate.getTime() + (1000 * 60 * 60 * 24));
        //System.out.println(eDate1);
        BigDecimal bigDecimal = maintenanceCardRepository.getTotalLiabilities(sDate, eDate1);
        if(bigDecimal == null){
            bigDecimal = BigDecimal.valueOf(0);
        }
        System.out.println(bigDecimal);
        return bigDecimal;
    }

    @Override
    public List<TotalMoneyDTO> getAllTotalMoney(String startDate, String endDate) {
        int startDay = Integer.parseInt(startDate.substring(0,2));
        int endDay = Integer.parseInt(endDate.substring(0,2));

        int startMonth = Integer.parseInt(startDate.substring(3,5));
        int endMonth = Integer.parseInt(endDate.substring(3,5));

        List<String> dates = new ArrayList<>();
        if(endMonth - startMonth == 0){
            for(int i = startDay; i <= endDay; i++ ){
                if(i < 10){
                    dates.add("0"+i+startDate.substring(2));
                }else{
                    dates.add(i+startDate.substring(2));
                }
            }
        }else if(endMonth - startMonth == 1){
            for(int i = startDay; i <= 31; i++ ){
                if(i < 10){
                    dates.add("0"+i+startDate.substring(2));
                }else{
                    dates.add(i+startDate.substring(2));
                }
            }
            for(int i = 1; i <= endDay; i++){
                if(i < 10){
                    dates.add("0"+i+endDate.substring(2));
                }else{
                    dates.add(i+endDate.substring(2));
                }
            }
        }
        System.out.println(dates);
        List<TotalMoneyDTO> moneyDTOList = new ArrayList<>();
        try{
            for(String date: dates){
                TotalMoneyDTO totalMoneyDTO = new TotalMoneyDTO();
                totalMoneyDTO = businessInformationCustom.getMoneyDto(date);
                if(totalMoneyDTO.getDate() == null){
                    totalMoneyDTO.setDate(date);
                }
                if(totalMoneyDTO.getTotalDayMoney() == null){
                    totalMoneyDTO.setTotalDayMoney(BigDecimal.valueOf(0));
                }
                moneyDTOList.add(totalMoneyDTO);
            }
        }
        catch (Exception e){
            e.printStackTrace();
        }
        return moneyDTOList;
    }

    @Override
    public List<StatisticRepairmanDTO> getTopRepairman(Date startDate, Date endDate){
        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        String sDate = dateFormat.format(startDate);
        String eDate = dateFormat.format(endDate);
        //System.out.println(sDate+" "+ eDate);
        System.out.println(businessInformationCustom.getTopRepairMan(sDate, eDate).toString());
        return businessInformationCustom.getTopRepairMan(sDate, eDate);
    }

    @Override
    public List<StatisticRepairmanDTO> getTopService(Date startDate, Date endDate) {
        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        String sDate = dateFormat.format(startDate);
        String eDate = dateFormat.format(endDate);
        //System.out.println(sDate+" "+ eDate);
        return businessInformationCustom.getTopService(sDate, eDate);
    }

    private String getDateNow(){
        Date date = new Date();
        SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
        String strDate = formatter.format(date);
        return strDate;
    }
}
