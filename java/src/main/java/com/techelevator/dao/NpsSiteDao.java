package com.techelevator.dao;

import com.techelevator.model.NpsSite;

import java.util.List;
import java.util.Map;

public interface NpsSiteDao {

    List<NpsSite> getSites();

    List<NpsSite> getSitesByState(String stateName);

    List<NpsSite> getSitesByDesignation(String siteDesignation);

    NpsSite getSiteById(int siteId);

    NpsSite getSiteByName(String siteName);


}
