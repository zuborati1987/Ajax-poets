package com.codecool.dao;

import com.codecool.model.User;

import java.sql.SQLException;
import java.util.List;

public interface UserDao {

    User findByEmail(String email) throws SQLException;
}
