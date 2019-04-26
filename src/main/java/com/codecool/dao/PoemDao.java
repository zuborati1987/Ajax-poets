package com.codecool.dao;

import com.codecool.model.Poem;

import java.sql.SQLException;
import java.util.List;

public interface PoemDao {

    List<Poem> findByUserId(int id) throws SQLException;

    Poem findById(int id) throws SQLException;

}
