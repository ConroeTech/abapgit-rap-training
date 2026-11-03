CLASS zcl_whoami DEFINITION PUBLIC FINAL CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
ENDCLASS.

CLASS zcl_whoami IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    out->write( |User   : { sy-uname }| ).
    out->write( |Client : { sy-mandt }| ).
    out->write( |Langue : { sy-langu }| ).
    out->write( |Système: { sy-sysid }| ).

    out->write( cl_abap_context_info=>get_user_technical_name( ) ).
    out->write( cl_abap_context_info=>get_user_formatted_name( ) ).

  ENDMETHOD.
ENDCLASS.
