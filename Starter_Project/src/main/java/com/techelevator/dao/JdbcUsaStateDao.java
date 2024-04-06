package com.techelevator.dao;

import com.techelevator.model.UsaState;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class JdbcUsaStateDao implements UsaStateDao{
    private final JdbcTemplate jdbcTemplate;

    public JdbcUsaStateDao(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Override
    public List<UsaState> getListOfStates() {
        return null;
    }

    @Override
    public UsaState getStateByAbbreviation(String stateAbbreviation) {
        return null;
    }
}
