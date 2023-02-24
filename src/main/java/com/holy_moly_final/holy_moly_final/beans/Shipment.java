package com.holy_moly_final.holy_moly_final.beans;

import java.sql.Date;

public class Shipment {

    private String TRACKING_NUMBER;
    private int NUMBER_OF_ITEMS;
    private String SENDER_NAME;
    private String SENDER_PHONE;
    private String DEPARTURE_POSTALCODE;
    private String DEPARTURE_ADDRESS;
    private String DEPARTURE_DETAILADDRESS;
    private String DEPARTURE_EXTRAADDRESS;
    private String RECIPIENT_NAME;
    private String RECIPIENT_PHONE;
    private String DESTINATION_POSTALCODE;
    private String DESTINATION_ADDRESS;
    private String DESTINATION_DETAILADDRESS;
    private String DESTINATION_EXTRAADDRESS;
    private int TOTAL_PRICE;

    public String getTRACKING_NUMBER() {
        return TRACKING_NUMBER;
    }

    public void setTRACKING_NUMBER(String tRACKING_NUMBER) {
        TRACKING_NUMBER = tRACKING_NUMBER;
    }

    public int getNUMBER_OF_ITEMS() {
        return NUMBER_OF_ITEMS;
    }

    public void setNUMBER_OF_ITEMS(int nUMBER_OF_ITEMS) {
        NUMBER_OF_ITEMS = nUMBER_OF_ITEMS;
    }

    public String getSENDER_NAME() {
        return SENDER_NAME;
    }

    public void setSENDER_NAME(String sENDER_NAME) {
        SENDER_NAME = sENDER_NAME;
    }

    public String getSENDER_PHONE() {
        return SENDER_PHONE;
    }

    public void setSENDER_PHONE(String sENDER_PHONE) {
        SENDER_PHONE = sENDER_PHONE;
    }

    public String getDEPARTURE_POSTALCODE() {
        return DEPARTURE_POSTALCODE;
    }

    public void setDEPARTURE_POSTALCODE(String dEPARTURE_POSTALCODE) {
        DEPARTURE_POSTALCODE = dEPARTURE_POSTALCODE;
    }

    public String getDEPARTURE_ADDRESS() {
        return DEPARTURE_ADDRESS;
    }

    public void setDEPARTURE_ADDRESS(String dEPARTURE_ADDRESS) {
        DEPARTURE_ADDRESS = dEPARTURE_ADDRESS;
    }

    public String getDEPARTURE_DETAILADDRESS() {
        return DEPARTURE_DETAILADDRESS;
    }

    public void setDEPARTURE_DETAILADDRESS(String dEPARTURE_DETAILADDRESS) {
        DEPARTURE_DETAILADDRESS = dEPARTURE_DETAILADDRESS;
    }

    public String getDEPARTURE_EXTRAADDRESS() {
        return DEPARTURE_EXTRAADDRESS;
    }

    public void setDEPARTURE_EXTRAADDRESS(String dEPARTURE_EXTRAADDRESS) {
        DEPARTURE_EXTRAADDRESS = dEPARTURE_EXTRAADDRESS;
    }

    public String getRECIPIENT_NAME() {
        return RECIPIENT_NAME;
    }

    public void setRECIPIENT_NAME(String rECIPIENT_NAME) {
        RECIPIENT_NAME = rECIPIENT_NAME;
    }

    public String getRECIPIENT_PHONE() {
        return RECIPIENT_PHONE;
    }

    public void setRECIPIENT_PHONE(String rECIPIENT_PHONE) {
        RECIPIENT_PHONE = rECIPIENT_PHONE;
    }

    public String getDESTINATION_POSTALCODE() {
        return DESTINATION_POSTALCODE;
    }

    public void setDESTINATION_POSTALCODE(String dESTINATION_POSTALCODE) {
        DESTINATION_POSTALCODE = dESTINATION_POSTALCODE;
    }

    public String getDESTINATION_ADDRESS() {
        return DESTINATION_ADDRESS;
    }

    public void setDESTINATION_ADDRESS(String dESTINATION_ADDRESS) {
        DESTINATION_ADDRESS = dESTINATION_ADDRESS;
    }

    public String getDESTINATION_DETAILADDRESS() {
        return DESTINATION_DETAILADDRESS;
    }

    public void setDESTINATION_DETAILADDRESS(String dESTINATION_DETAILADDRESS) {
        DESTINATION_DETAILADDRESS = dESTINATION_DETAILADDRESS;
    }

    public String getDESTINATION_EXTRAADDRESS() {
        return DESTINATION_EXTRAADDRESS;
    }

    public void setDESTINATION_EXTRAADDRESS(String dESTINATION_EXTRAADDRESS) {
        DESTINATION_EXTRAADDRESS = dESTINATION_EXTRAADDRESS;
    }

    public int getTOTAL_PRICE() {
        return TOTAL_PRICE;
    }

    public void setTOTAL_PRICE(int tOTAL_PRICE) {
        TOTAL_PRICE = tOTAL_PRICE;
    }

    public int getITEM_PRICE() {
        return ITEM_PRICE;
    }

    public void setITEM_PRICE(int iTEM_PRICE) {
        ITEM_PRICE = iTEM_PRICE;
    }

    public Date getVISITING_DATE() {
        return VISITING_DATE;
    }

    public void setVISITING_DATE(Date vISITING_DATE) {
        VISITING_DATE = vISITING_DATE;
    }

    public Date getRESERVATION_DATE() {
        return RESERVATION_DATE;
    }

    public void setRESERVATION_DATE(Date rESERVATION_DATE) {
        RESERVATION_DATE = rESERVATION_DATE;
    }

    public Date getSHIPMENT_COMPLETION_DATE() {
        return SHIPMENT_COMPLETION_DATE;
    }

    public void setSHIPMENT_COMPLETION_DATE(Date sHIPMENT_COMPLETION_DATE) {
        SHIPMENT_COMPLETION_DATE = sHIPMENT_COMPLETION_DATE;
    }

    public String getSHIPMENT_TYPE_UID() {
        return SHIPMENT_TYPE_UID;
    }

    public void setSHIPMENT_TYPE_UID(String sHIPMENT_TYPE_UID) {
        SHIPMENT_TYPE_UID = sHIPMENT_TYPE_UID;
    }

    public String getREQUEST_UID() {
        return REQUEST_UID;
    }

    public void setREQUEST_UID(String rEQUEST_UID) {
        REQUEST_UID = rEQUEST_UID;
    }

    public String getPROGRESS_STATUS_UID() {
        return PROGRESS_STATUS_UID;
    }

    public void setPROGRESS_STATUS_UID(String pROGRESS_STATUS_UID) {
        PROGRESS_STATUS_UID = pROGRESS_STATUS_UID;
    }

    public String getPROGRESS_STATUS_TYPE() {
        return PROGRESS_STATUS_TYPE;
    }

    public void setPROGRESS_STATUS_TYPE(String pROGRESS_STATUS_TYPE) {
        PROGRESS_STATUS_TYPE = pROGRESS_STATUS_TYPE;
    }

    public String getPROGRESS_STATUS_DESCRIPTION() {
        return PROGRESS_STATUS_DESCRIPTION;
    }

    public void setPROGRESS_STATUS_DESCRIPTION(String pROGRESS_STATUS_DESCRIPTION) {
        PROGRESS_STATUS_DESCRIPTION = pROGRESS_STATUS_DESCRIPTION;
    }

    public String getITEM_TYPE_UID() {
        return ITEM_TYPE_UID;
    }

    public void setITEM_TYPE_UID(String iTEM_TYPE_UID) {
        ITEM_TYPE_UID = iTEM_TYPE_UID;
    }

    public String getITEM_TYPE() {
        return ITEM_TYPE;
    }

    public void setITEM_TYPE(String iTEM_TYPE) {
        ITEM_TYPE = iTEM_TYPE;
    }

    public String getITEM_TYPE_DESCRIPTION() {
        return ITEM_TYPE_DESCRIPTION;
    }

    public void setITEM_TYPE_DESCRIPTION(String iTEM_TYPE_DESCRIPTION) {
        ITEM_TYPE_DESCRIPTION = iTEM_TYPE_DESCRIPTION;
    }

    private int ITEM_PRICE;
    private Date VISITING_DATE;
    private Date RESERVATION_DATE;
    private Date SHIPMENT_COMPLETION_DATE;
    private String SHIPMENT_TYPE_UID;
    private String REQUEST_UID;
    private String PROGRESS_STATUS_UID;
    private String PROGRESS_STATUS_TYPE;
    private String PROGRESS_STATUS_DESCRIPTION;
    private String ITEM_TYPE_UID;
    private String ITEM_TYPE;
    private String ITEM_TYPE_DESCRIPTION;
}
