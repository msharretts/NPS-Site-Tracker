package com.techelevator.dao;

import com.techelevator.model.UsaState;

import java.util.List;

public interface UsaStateDao {
    List<UsaState> getListOfStates();
    UsaState getStateByAbbreviation(String stateAbbreviation);

}
