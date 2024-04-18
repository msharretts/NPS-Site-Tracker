package com.techelevator.dao;

import com.techelevator.model.NpsSite;

import java.util.List;
import java.util.Map;

public interface NpsSiteDao {

    List<NpsSite> getSites();

    List<NpsSite> getSitesByState(String stateAbbreviation);

    List<NpsSite> getSitesByDesignation(String siteDesignation);
    List<NpsSite> getSitesByStateAndDesignation(String stateAbbreviation, String siteDesignation);

    NpsSite getSiteById(int siteId);

    NpsSite getSiteByName(String siteName);

    List<NpsSite> getSitesByHasCamping();


}
