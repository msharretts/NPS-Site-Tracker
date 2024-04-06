package com.techelevator.model;

import java.util.Date;

public class NpsSite {
    private int parkId;
    private String siteName;
    private java.sql.Date dateEstablished;
    private double areaInKm2;
    private boolean hasCamping;

    public void NpsSite(String siteName, int parkId, java.sql.Date dateEstablished, double areaInKm2, boolean hasCamping) {
        this.siteName = siteName;
        this.parkId = parkId;
        this.dateEstablished = dateEstablished;
        this.areaInKm2 = areaInKm2;
        this.hasCamping = hasCamping;
    }

    public int getParkId() {
        return parkId;
    }

    public void setParkId(int parkId) {
        this.parkId = parkId;
    }

    public String getSiteName() {
        return siteName;
    }

    public void setSiteName(String siteName) {
        this.siteName = siteName;
    }

    public Date getDateEstablished() {
        return dateEstablished;
    }

    public void setDateEstablished(java.sql.Date dateEstablished) {
        this.dateEstablished = dateEstablished;
    }

    public double getAreaInKm2() {
        return areaInKm2;
    }

    public void setAreaInKm2(double areaInKm2) {
        this.areaInKm2 = areaInKm2;
    }

    public boolean isHasCamping() {
        return hasCamping;
    }

    public void setHasCamping(boolean hasCamping) {
        this.hasCamping = hasCamping;
    }
}
