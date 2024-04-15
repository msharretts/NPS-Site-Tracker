package com.techelevator.controllers;

import com.techelevator.dao.NpsSiteDao;
import com.techelevator.dao.UsaStateDao;
import com.techelevator.model.NpsSite;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import java.security.Principal;
import java.util.List;
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
    @GetMapping("/sites")
    public List<NpsSite> getAllSites() {
        return npsSiteDao.getSites();
    }

    @ResponseStatus(HttpStatus.OK)
    @GetMapping("/sites/designation/{designation}")
    public List<NpsSite> getSitesByDesignation(@PathVariable String designation) {
        return npsSiteDao.getSitesByDesignation(designation);
    }

    @ResponseStatus(HttpStatus.OK)
    @GetMapping("/sites/states/{stateName}")
    public List<NpsSite> getSitesByState(@PathVariable String stateName) {
        return npsSiteDao.getSitesByState(stateName);
    }

    @ResponseStatus(HttpStatus.OK)
    @GetMapping("/sites/states/{stateAbbreviation}/designation/{designation}")
    public List<NpsSite> getSitesByStateAndDesignation(@PathVariable String stateAbbreviation, @PathVariable String designation) {
        return npsSiteDao.getSitesByStateAndDesignation(stateAbbreviation, designation);
    }

    @ResponseStatus(HttpStatus.OK)
    @GetMapping("/sites/{siteId}")
    public NpsSite getSiteById(int siteId) {
        return npsSiteDao.getSiteById(siteId);
    }
}
