package com.techelevator.model;

public class Designation {
    private int designationId;
    private String designationName;

    public Designation(int designationId, String designationName) {
        this.designationId = designationId;
        this.designationName = designationName;
    }

    public Designation() {
    }

    public int getDesignationId() {
        return designationId;
    }

    public void setDesignationId(int designationId) {
        this.designationId = designationId;
    }

    public String getDesignationName() {
        return designationName;
    }

    public void setDesignationName(String designationName) {
        this.designationName = designationName;
    }
}
