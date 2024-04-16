package com.techelevator.dao;

import com.techelevator.exception.DaoException;
import com.techelevator.model.Designation;
import com.techelevator.model.NpsSite;
import com.techelevator.model.UsaState;
import org.springframework.jdbc.CannotGetJdbcConnectionException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;
@Component
public class JdbcDesignationDao implements DesignationDao{

    private final JdbcTemplate jdbcTemplate;

    public JdbcDesignationDao(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Override
    public List<Designation> getDesignations() {
        List<Designation> listOfDesignations = new ArrayList<>();
        String sql = "SELECT designation_id, designation_name FROM designation ORDER BY designation_name;";
        try {
            SqlRowSet results = jdbcTemplate.queryForRowSet(sql);
            while (results.next()) {
                Designation designation = mapRowToDesignation(results);
                listOfDesignations.add(designation);
            }
        } catch (CannotGetJdbcConnectionException e) {
            throw new DaoException("Unable to connect to server or database.", e);
        }
        return listOfDesignations;
    }

    @Override
    public List<Designation> getDesignationsBySite() {
        return null;
    }

    @Override
    public List<Designation> getDesignationsByState() {
        return null;
    }

    private Designation mapRowToDesignation(SqlRowSet rowSet) {
        Designation designation = new Designation();
        designation.setDesignationId(rowSet.getInt("designation_id"));
        designation.setDesignationName(rowSet.getString("designation_name"));
        return designation;
    }
}
