package org.example;

import java.util.Date;

public class NpsSite {
    private int parkId;
    private String siteName;
    private Date dateEstablished;
    private double areaInKm2;
    private boolean hasCamping;
    private int visitorsAnnually;
    private boolean hasJuniorRangerProgram = false;

    public void NpsSite(String siteName, int parkId, Date dateEstablished) {
        this.siteName = siteName;
        this.parkId = parkId;
        this.dateEstablished = dateEstablished;
    }

    public void NpsSite(String siteName, int parkId, Date dateEstablished, Address mailingAddress) {
        this.siteName = siteName;
        this.parkId = parkId;
        this.dateEstablished = dateEstablished;
    }

    public boolean hasJuniorRangerProgram() {
        return hasJuniorRangerProgram;
    }

    public Date getDateEstablished() {
        return dateEstablished;
    }

    public String getSiteName() {
        return siteName;
    }

    public int getParkId() {
        return parkId;
    }

    public boolean isHasJuniorRangerProgram() {
        return hasJuniorRangerProgram;
    }

}
