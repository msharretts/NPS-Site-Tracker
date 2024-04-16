package com.techelevator.model;

public class UsaState {
    private String stateName;
    private String stateAbbreviation;

    public UsaState() {
    }

    public UsaState(String stateName, String stateAbbreviation) {
        this.stateName = stateName;
        this.stateAbbreviation = stateAbbreviation;
    }

    public String getStateName() {
        return stateName;
    }

    public void setStateName(String stateName) {
        this.stateName = stateName;
    }

    public String getStateAbbreviation() {
        return stateAbbreviation;
    }

    public void setStateAbbreviation(String stateAbbreviation) {
        this.stateAbbreviation = stateAbbreviation;
    }
}
