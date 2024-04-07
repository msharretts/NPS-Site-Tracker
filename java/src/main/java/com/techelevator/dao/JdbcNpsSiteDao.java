package com.techelevator.dao;

import com.techelevator.exception.DaoException;
import com.techelevator.model.NpsSite;
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
    public Map<Integer, NpsSite> getSites() {
        Map<Integer, NpsSite> mapOfSites = new HashMap<>();
        String sql = "SELECT * FROM site;";
        try {
            SqlRowSet results = jdbcTemplate.queryForRowSet(sql);
            while (results.next()) {
                NpsSite npsSite = mapRowToSite(results);
                mapOfSites.put(npsSite.getParkId(), npsSite);
            }
        } catch (CannotGetJdbcConnectionException e) {
            throw new DaoException("Unable to connect to server or database.", e);
        }
        return mapOfSites;
    }

    @Override
    public Map<Integer, NpsSite> getSitesByState(String stateName) {
        Map<Integer, NpsSite> mapOfSites = new HashMap<>();
        String sql = "SELECT * FROM site " +
                "JOIN site_state USING (site_id) " +
                "JOIN state USING (state_abbreviation) " +
                "WHERE state_name = ?;";
        try {
            SqlRowSet results = jdbcTemplate.queryForRowSet(sql, stateName);
            while (results.next()) {
                NpsSite npsSite = mapRowToSite(results);
                mapOfSites.put(npsSite.getParkId(), npsSite);
            }
        } catch (CannotGetJdbcConnectionException e) {
            throw new DaoException("Unable to connect to server or database.", e);
        }
        return mapOfSites;
    }

    @Override
    public Map<Integer, NpsSite> getSitesByDesignation(String siteDesignation) {
        Map<Integer, NpsSite> mapOfSites = new HashMap<>();
        String sql = "SELECT * FROM site " +
                "JOIN designation_site USING (site_id) " +
                "JOIN designation USING (designation_id) " +
                "WHERE designation_name = ?;";
        try {
            SqlRowSet results = jdbcTemplate.queryForRowSet(sql, siteDesignation);
            while (results.next()) {
                NpsSite npsSite = mapRowToSite(results);
                mapOfSites.put(npsSite.getParkId(), npsSite);
            }
        } catch (CannotGetJdbcConnectionException e) {
            throw new DaoException("Unable to connect to server or database.", e);
        }
        return mapOfSites;
    }

    @Override
    public NpsSite getSiteById(int siteId) {
        NpsSite npsSite = new NpsSite();
        String sql = "SELECT * FROM site WHERE site_id = ?;";
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
        String sql = "SELECT * FROM site WHERE site_name = ?;";
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

    private NpsSite mapRowToSite(SqlRowSet results) {
        NpsSite npsSite = new NpsSite();
        npsSite.setParkId(results.getInt("site_id"));
        npsSite.setSiteName(results.getString("site_name"));
        npsSite.setDateEstablished(results.getDate("date_established"));
        npsSite.setAreaInKm2(results.getDouble("area_km2"));
        npsSite.setHasCamping(results.getBoolean("has_camping"));
        return npsSite;
    }
}