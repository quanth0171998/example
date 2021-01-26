package com.poly.datn.repository;

import com.poly.datn.entity.MaintenanceCardDetail;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface MaintenanceCardDetailRepository extends JpaRepository< MaintenanceCardDetail,Long> {

    @Modifying
    @Query(value = "UPDATE maintenance_card_details SET is_delete = 1 WHERE (id = :id );\n", nativeQuery = true)
    public void deleteById(@Param("id") Long id);

    public MaintenanceCardDetail getByServiceIdAndStatus(@Param("ServiceId") Long serviceId,@Param("Status") byte status);
    @Modifying
    @Query(value="delete from MaintenanceCardDetail m where m.id =:id")
    public void deleteByIdMaintenanceCardDetail(Long id);
}
