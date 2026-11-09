CLASS lhc_Customer DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS create FOR MODIFY
      IMPORTING entities FOR CREATE Customer.

    METHODS update FOR MODIFY
      IMPORTING entities FOR UPDATE Customer.

    METHODS delete FOR MODIFY
      IMPORTING keys FOR DELETE Customer.

    METHODS read FOR READ
      IMPORTING keys FOR READ Customer RESULT result.

    METHODS lock FOR LOCK
      IMPORTING keys FOR LOCK Customer.

    METHODS rba_Custaddr FOR READ
      IMPORTING keys_rba FOR READ Customer\_Custaddr FULL result_requested RESULT result LINK association_links.

    METHODS cba_Custaddr FOR MODIFY
      IMPORTING entities_cba FOR CREATE Customer\_Custaddr.

ENDCLASS.

CLASS lhc_Customer IMPLEMENTATION.

  METHOD create.
    DATA: ls_customer TYPE zscustomer.

    LOOP AT entities ASSIGNING FIELD-SYMBOL(<entity>).
      MOVE-CORRESPONDING <entity> TO  ls_customer.

      DATA(customerno) = zcl_customer=>get_instance( )->cust_create( is_customer = ls_customer ).

      APPEND VALUE #( %cid = <entity>-%cid customerno = customerno ) TO mapped-customer.
    ENDLOOP.


  ENDMETHOD.

  METHOD update.
  ENDMETHOD.

  METHOD delete.
  ENDMETHOD.

  METHOD read.
  ENDMETHOD.

  METHOD lock.
  ENDMETHOD.

  METHOD rba_Custaddr.
  ENDMETHOD.

  METHOD cba_Custaddr.
  ENDMETHOD.

ENDCLASS.

CLASS lhc_CustAddr DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS update FOR MODIFY
      IMPORTING entities FOR UPDATE CustAddr.

    METHODS delete FOR MODIFY
      IMPORTING keys FOR DELETE CustAddr.

    METHODS read FOR READ
      IMPORTING keys FOR READ CustAddr RESULT result.

    METHODS rba_Customer FOR READ
      IMPORTING keys_rba FOR READ CustAddr\_Customer FULL result_requested RESULT result LINK association_links.

ENDCLASS.

CLASS lhc_CustAddr IMPLEMENTATION.

  METHOD update.
  ENDMETHOD.

  METHOD delete.
  ENDMETHOD.

  METHOD read.
  ENDMETHOD.

  METHOD rba_Customer.
  ENDMETHOD.

ENDCLASS.

CLASS lsc_ZI_CUSTOMER20 DEFINITION INHERITING FROM cl_abap_behavior_saver.
  PROTECTED SECTION.

    METHODS finalize REDEFINITION.

    METHODS check_before_save REDEFINITION.

    METHODS save REDEFINITION.

    METHODS cleanup REDEFINITION.

    METHODS cleanup_finalize REDEFINITION.

ENDCLASS.

CLASS lsc_ZI_CUSTOMER20 IMPLEMENTATION.

  METHOD finalize.
  ENDMETHOD.

  METHOD check_before_save.
  ENDMETHOD.

  METHOD save.
    zcl_customer=>get_instance( )->save( ).
  ENDMETHOD.

  METHOD cleanup.
  ENDMETHOD.

  METHOD cleanup_finalize.
  ENDMETHOD.

ENDCLASS.
