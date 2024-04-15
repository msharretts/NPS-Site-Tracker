package com.techelevator.model;

import java.time.LocalDate;
import java.util.Date;

public class NpsSite {
    private int siteId;
    private String siteName;
    private String npsCallLetters;
    private LocalDate dateEstablished;
    private double areaInKm2;
    private boolean hasCamping;

    public void NpsSite(String siteName, String npsCallLetters, int siteId, LocalDate dateEstablished, double areaInKm2, boolean hasCamping) {
        this.siteName = siteName;
        this.npsCallLetters = npsCallLetters;
        this.siteId = siteId;
        this.dateEstablished = dateEstablished;
        this.areaInKm2 = areaInKm2;
        this.hasCamping = hasCamping;
    }

    public int getSiteId() {
        return siteId;
    }

    public void setSiteId(int siteId) {
        this.siteId = siteId;
    }
    public String getSiteName() {
        return siteName;
    }

    public void setSiteName(String siteName) {
        this.siteName = siteName;
    }

    public LocalDate getDateEstablished() {
        return dateEstablished;
    }

    public void setDateEstablished(LocalDate dateEstablished) {
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

    public String getNpsCallLetters() {
        return npsCallLetters;
    }

    public void setNpsCallLetters(String npsCallLetters) {
        this.npsCallLetters = npsCallLetters;
    }

}
