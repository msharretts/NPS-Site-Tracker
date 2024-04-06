package com.techelevator.dao;

import com.techelevator.model.NpsSite;

import java.util.List;
import java.util.Map;

public interface NpsSiteDao {

    Map<Integer, NpsSite> getSites();

    Map<Integer, NpsSite> getSitesByState(String stateName);

    Map<Integer, NpsSite> getSitesByDesignation(String siteDesignation);

    NpsSite getSiteById(int siteId);

    NpsSite getSiteByName(String siteName);


}
