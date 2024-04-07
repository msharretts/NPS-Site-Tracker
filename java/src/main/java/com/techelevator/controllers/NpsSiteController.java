package com.techelevator.controllers;

import com.techelevator.dao.NpsSiteDao;
import com.techelevator.dao.UsaStateDao;
import com.techelevator.model.NpsSite;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

import java.security.Principal;
import java.util.Map;

@CrossOrigin
@RestController
public class NpsSiteController {

    private final NpsSiteDao npsSiteDao;
    private final UsaStateDao usaStateDao;


    public NpsSiteController(NpsSiteDao npsSiteDao, UsaStateDao usaStateDao) {
        this.npsSiteDao = npsSiteDao;
        this.usaStateDao = usaStateDao;
    }

    @ResponseStatus(HttpStatus.OK)
    @GetMapping(path = "/sites")
    public Map<Integer, NpsSite> getSites() {
        return npsSiteDao.getSites();
    }
}
