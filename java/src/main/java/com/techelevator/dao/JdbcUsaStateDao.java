package com.techelevator.dao;

import com.techelevator.exception.DaoException;
import com.techelevator.model.NpsSite;
import com.techelevator.model.UsaState;
import org.springframework.jdbc.CannotGetJdbcConnectionException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

@Component
public class JdbcUsaStateDao implements UsaStateDao {
    private final JdbcTemplate jdbcTemplate;

    public JdbcUsaStateDao(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Override
    public List<UsaState> getListOfStates() {
        List<UsaState> listOfStates = new ArrayList<>();
        String sql = "SELECT state_abbreviation, state_name FROM state ORDER BY state_name;";
        try {
            SqlRowSet results = jdbcTemplate.queryForRowSet(sql);
            while (results.next()) {
                UsaState usaState = mapRowToState(results);
                listOfStates.add(usaState);
            }
        } catch (CannotGetJdbcConnectionException e) {
            throw new DaoException("Unable to connect to server or database.", e);
        }
        return listOfStates;


    }

    @Override
    public UsaState getStateByAbbreviation(String stateAbbreviation) {
        return null;
    }

    private UsaState mapRowToState(SqlRowSet rowSet) {
        UsaState usaState = new UsaState();
        usaState.setStateAbbreviation(rowSet.getString("state_abbreviation"));
        usaState.setStateName(rowSet.getString("state_name"));
        return usaState;
    }
}
