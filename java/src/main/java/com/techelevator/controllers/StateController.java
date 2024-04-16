package com.techelevator.controllers;

import com.techelevator.dao.NpsSiteDao;
import com.techelevator.dao.UsaStateDao;
import com.techelevator.model.UsaState;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@CrossOrigin
@RestController
public class StateController {

    private final NpsSiteDao npsSiteDao;
    private final UsaStateDao usaStateDao;

    public StateController(NpsSiteDao npsSiteDao, UsaStateDao usaStateDao) {
        this.npsSiteDao = npsSiteDao;
        this.usaStateDao = usaStateDao;
    }

    @GetMapping ("/states")
    public List<UsaState> getAllStates() {
        return usaStateDao.getListOfStates();
    }
}
