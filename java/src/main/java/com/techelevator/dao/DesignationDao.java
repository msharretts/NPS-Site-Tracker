package com.techelevator.dao;

import com.techelevator.model.Designation;

import java.util.List;

public interface DesignationDao {

    List<Designation> getDesignations();

    List<Designation> getDesignationsBySite();
    List<Designation> getDesignationsByState();
}
