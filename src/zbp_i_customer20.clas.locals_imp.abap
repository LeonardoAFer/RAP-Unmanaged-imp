CLASS lhc_ZI_CUSTOMER20 DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS create FOR MODIFY
      IMPORTING entities FOR CREATE zi_customer20.

    METHODS update FOR MODIFY
      IMPORTING entities FOR UPDATE zi_customer20.

    METHODS delete FOR MODIFY
      IMPORTING keys FOR DELETE zi_customer20.

    METHODS read FOR READ
      IMPORTING keys FOR READ zi_customer20 RESULT result.

    METHODS lock FOR LOCK
      IMPORTING keys FOR LOCK zi_customer20.

    METHODS rba_Custaddr FOR READ
      IMPORTING keys_rba FOR READ zi_customer20\_Custaddr FULL result_requested RESULT result LINK association_links.

    METHODS cba_Custaddr FOR MODIFY
      IMPORTING entities_cba FOR CREATE zi_customer20\_Custaddr.

ENDCLASS.

CLASS lhc_ZI_CUSTOMER20 IMPLEMENTATION.

  METHOD create.
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

CLASS lhc_ZI_CUSTADDR20 DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS update FOR MODIFY
      IMPORTING entities FOR UPDATE zi_custaddr20.

    METHODS delete FOR MODIFY
      IMPORTING keys FOR DELETE zi_custaddr20.

    METHODS read FOR READ
      IMPORTING keys FOR READ zi_custaddr20 RESULT result.

    METHODS rba_Customer FOR READ
      IMPORTING keys_rba FOR READ zi_custaddr20\_Customer FULL result_requested RESULT result LINK association_links.

ENDCLASS.

CLASS lhc_ZI_CUSTADDR20 IMPLEMENTATION.

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
  ENDMETHOD.

  METHOD cleanup.
  ENDMETHOD.

  METHOD cleanup_finalize.
  ENDMETHOD.

ENDCLASS.
