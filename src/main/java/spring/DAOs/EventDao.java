package spring.DAOs;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import spring.models.Event;

import javax.sql.DataSource;

public class EventDao {
    @Autowired
    DataSource datasource;

    @Autowired
    JdbcTemplate jdbcTemplate;

    public void createEvent(Event event) {
        String sql = "insert into events (eName, eLocation, eDateTime, eDescription, uId) values (?,?,?,?,?)";
        jdbcTemplate.update(sql, event.getEname(), event.getElocation(), event.getEdate(), event.getEdescription(), event.getUid());
    }
}