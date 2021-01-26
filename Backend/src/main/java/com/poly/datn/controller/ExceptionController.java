package com.poly.datn.controller;

import com.poly.datn.exception.CodeExistedException;
import com.poly.datn.exception.NotANumberException;
import com.poly.datn.exception.commonException.NotFoundException;
import com.poly.datn.exception.customerException.DupplicateFieldException;
import com.poly.datn.exception.maintenanceCardException.*;
import com.poly.datn.exception.productException.ProductNotFoundException;
import com.poly.datn.exception.productException.InvalidImageTypeException;
import com.poly.datn.exception.userException.DuplicateEmailException;
import com.poly.datn.exception.userException.TokenExpiredException;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

@RestControllerAdvice
public class ExceptionController {

    @ExceptionHandler
    private ResponseEntity handleNotFoundException(ProductNotFoundException e) {
        return new ResponseEntity<>(e.getMessage(), HttpStatus.NOT_FOUND);
    }

    @ExceptionHandler
    private ResponseEntity handleNotANumberException(NotANumberException e) {
        return new ResponseEntity<>(e.getMessage(), HttpStatus.BAD_REQUEST);
    }

    @ExceptionHandler
    private ResponseEntity handleCodeExistedException(CodeExistedException e) {
        return new ResponseEntity<>(e.getMessage(), HttpStatus.BAD_REQUEST);
    }

    @ExceptionHandler
    private ResponseEntity handleNotEnoughProductException(NotEnoughProductException e) {
        return new ResponseEntity<>(e.getMessage(), HttpStatus.CONFLICT);
    }

    @ExceptionHandler
    private ResponseEntity handleNotFoundMaintenanceCardException(NotFoundException e) {
        return new ResponseEntity<>(e.getMessage(), HttpStatus.NOT_FOUND);
    }

    @ExceptionHandler
    private ResponseEntity handleNotFoundRepairmanException(NotFoundRepairmanException e) {
        if(e.getMessage() == ""){
            return new ResponseEntity<>(e.getMessage(), HttpStatus.METHOD_NOT_ALLOWED);
        }
        return new ResponseEntity<>(e.getMessage(), HttpStatus.NOT_FOUND);
    }
    @ExceptionHandler
    private ResponseEntity handleEmailDuplicateException(DuplicateEmailException e) {
        return new ResponseEntity<>(e.getMessage(), HttpStatus.NOT_ACCEPTABLE);
    }
    @ExceptionHandler
    private ResponseEntity handleInvalidImageTypeException(InvalidImageTypeException e) {
        return new ResponseEntity<>(e.getMessage(), HttpStatus.BAD_REQUEST);
    }

    @ExceptionHandler
    private ResponseEntity handleMoneyExceedException(MoneyExceedException e) {
        return new ResponseEntity<>("", HttpStatus.BAD_REQUEST);
    }

    @ExceptionHandler
    private ResponseEntity handleNotUpdateException(NotUpdateException e) {
        return new ResponseEntity<>("", HttpStatus.BAD_REQUEST);
    }
    @ExceptionHandler
    private ResponseEntity CouponLargerTotalException(CouponLargerTotalException e){
        return new ResponseEntity(e.getMessage(),HttpStatus.CONFLICT);
    }
    @ExceptionHandler
    private ResponseEntity TokenExpiredException(TokenExpiredException e){
        return new ResponseEntity(e.getMessage(),HttpStatus.NON_AUTHORITATIVE_INFORMATION);
    }
    @ExceptionHandler
    private ResponseEntity DuplicateFieldCustomerException(DupplicateFieldException e){
        return new ResponseEntity(e.getMessage(),HttpStatus.CONFLICT);
    }
}
