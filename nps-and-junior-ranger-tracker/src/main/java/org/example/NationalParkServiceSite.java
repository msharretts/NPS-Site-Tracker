package org.example;

import java.util.Date;

public abstract class NationalParkServiceSite {
    private Date dateEstablished;
    private String siteName;
    private int parkId;
    private String superintendentName;
    private final boolean hasJuniorRangerProgram = false;

    private String stateLocation;
    private Address mailingAddress;

    public void NationalParkServiceSite(String siteName, int parkId, Date dateEstablished) {
        this.siteName = siteName;
        this.parkId = parkId;
        this.dateEstablished = dateEstablished;
    }

    public void NationalParkServiceSite(String siteName, int parkId, Date dateEstablished, String superintendentName, Address mailingAddress) {
        this.siteName = siteName;
        this.parkId = parkId;
        this.dateEstablished = dateEstablished;
        this.superintendentName = superintendentName;
        this.mailingAddress = mailingAddress;
    }

    public String getSuperintendentName() {
        return superintendentName;
    }

    public void setSuperintendentName(String superintendentName) {
        this.superintendentName = superintendentName;
    }

    public boolean hasJuniorRangerProgram() {
        return hasJuniorRangerProgram;
    }

    public String getStateLocation() {
        return stateLocation;
    }

    public void setStateLocation(String stateLocation) {
        this.stateLocation = stateLocation;
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

    public Address getMailingAddress() {
        return mailingAddress;
    }
}
