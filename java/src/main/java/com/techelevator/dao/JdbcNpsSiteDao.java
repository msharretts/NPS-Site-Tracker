package com.techelevator.dao;

import com.techelevator.exception.DaoException;
import com.techelevator.model.NpsSite;
import com.techelevator.model.UsaState;
import org.springframework.jdbc.CannotGetJdbcConnectionException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Component
public class JdbcNpsSiteDao implements NpsSiteDao{

    private final JdbcTemplate jdbcTemplate;

    public JdbcNpsSiteDao(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Override
    public List<NpsSite> getSites() {
        List<NpsSite> listOfSites = new ArrayList<>();
        String sql = "SELECT site_id, site_name, nps_call_letters, date_established, area_km2, has_camping FROM site ORDER BY site_name;";
        try {
            SqlRowSet results = jdbcTemplate.queryForRowSet(sql);
            while (results.next()) {
                NpsSite npsSite = mapRowToSite(results);
                listOfSites.add(npsSite);
            }
        } catch (CannotGetJdbcConnectionException e) {
            throw new DaoException("Unable to connect to server or database.", e);
        }
        return listOfSites;
    }

    @Override
    public List<NpsSite> getSitesByState(String stateAbbreviation) {
        List<NpsSite> listOfSites = new ArrayList<>();
        String sql = "SELECT site_id, site_name, nps_call_letters, date_established, area_km2, has_camping FROM site " +
                "JOIN site_state USING (site_id) " +
                "WHERE state_abbreviation = ? ORDER BY site_name;";
        try {
            SqlRowSet results = jdbcTemplate.queryForRowSet(sql, stateAbbreviation);
            while (results.next()) {
                NpsSite npsSite = mapRowToSite(results);
                listOfSites.add(npsSite);
            }
        } catch (CannotGetJdbcConnectionException e) {
            throw new DaoException("Unable to connect to server or database.", e);
        }
        return listOfSites;
    }

    @Override
    public List<NpsSite> getSitesByDesignation(String siteDesignation) {
        List<NpsSite> listOfSites = new ArrayList<>();
        String sql = "SELECT site_id, site_name, nps_call_letters, date_established, area_km2, has_camping FROM site " +
                "JOIN designation_site USING (site_id) " +
                "JOIN designation USING (designation_id) " +
                "WHERE designation_name = ? ORDER BY site_name;";
        try {
            SqlRowSet results = jdbcTemplate.queryForRowSet(sql, siteDesignation);
            while (results.next()) {
                NpsSite npsSite = mapRowToSite(results);
                listOfSites.add(npsSite);
            }
        } catch (CannotGetJdbcConnectionException e) {
            throw new DaoException("Unable to connect to server or database.", e);
        }
        return listOfSites;
    }

    @Override
    public List<NpsSite> getSitesByStateAndDesignation(String stateAbbreviation, String siteDesignation) {
        List<NpsSite> listOfSites = new ArrayList<>();
        String sql = "SELECT site_id, site_name, nps_call_letters, date_established, area_km2, has_camping FROM site " +
                "JOIN designation_site USING (site_id) " +
                "JOIN designation USING (designation_id) " +
                "JOIN site_state USING (site_id) " +
                "WHERE designation_name = ? AND state_abbreviation = ? ORDER BY site_name;";
        try {
            SqlRowSet results = jdbcTemplate.queryForRowSet(sql, siteDesignation, stateAbbreviation);
            while (results.next()) {
                NpsSite npsSite = mapRowToSite(results);
                listOfSites.add(npsSite);
            }
        } catch (CannotGetJdbcConnectionException e) {
            throw new DaoException("Unable to connect to server or database.", e);
        }
        return listOfSites;
    }

    @Override
    public NpsSite getSiteById(int siteId) {
        NpsSite npsSite = new NpsSite();
        String sql = "SELECT site_id, site_name, nps_call_letters, date_established, area_km2, has_camping FROM site WHERE site_id = ?;";
        try {
            SqlRowSet results = jdbcTemplate.queryForRowSet(sql, siteId);
            if (results.next()) {
                npsSite = mapRowToSite(results);
            }
        } catch (CannotGetJdbcConnectionException e) {
            throw new DaoException("Unable to connect to server or database.", e);
        }
        return npsSite;
    }



    @Override
    public NpsSite getSiteByName(String siteName) {
        NpsSite npsSite = new NpsSite();
        String sql = "SELECT site_id, site_name, nps_call_letters, date_established, area_km2, has_camping FROM site WHERE site_name = ?;";
        try {
            SqlRowSet results = jdbcTemplate.queryForRowSet(sql, siteName);
            if (results.next()) {
                npsSite = mapRowToSite(results);
            }
        } catch (CannotGetJdbcConnectionException e) {
            throw new DaoException("Unable to connect to server or database.", e);
        }
        return npsSite;
    }

    @Override
    public List<NpsSite> getSitesByHasCamping() {
        return null;
    }


    private NpsSite mapRowToSite(SqlRowSet results) {
        NpsSite npsSite = new NpsSite();
        npsSite.setSiteId(results.getInt("site_id"));
        npsSite.setNpsCallLetters(results.getString("nps_call_letters"));
        npsSite.setSiteName(results.getString("site_name"));
        npsSite.setDateEstablished(results.getDate("date_established").toLocalDate());
        npsSite.setAreaInKm2(results.getDouble("area_km2"));
        npsSite.setHasCamping(results.getBoolean("has_camping"));
        return npsSite;
    }
}
