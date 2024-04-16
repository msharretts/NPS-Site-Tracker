package com.techelevator.controllers;

import com.techelevator.dao.DesignationDao;
import com.techelevator.dao.NpsSiteDao;
import com.techelevator.dao.UsaStateDao;
import com.techelevator.model.Designation;
import com.techelevator.model.NpsSite;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;
import java.util.List;

@CrossOrigin
@RestController
public class DesignationController {

    private final DesignationDao designationDao;

    public DesignationController(DesignationDao designationDao) {
        this.designationDao = designationDao;
    }

    @ResponseStatus(HttpStatus.OK)
    @GetMapping("/designations")
    public List<Designation> getAllDesignations() {
        return designationDao.getDesignations();
    }
}
