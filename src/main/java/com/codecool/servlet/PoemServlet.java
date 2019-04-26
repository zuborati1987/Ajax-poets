package com.codecool.servlet;

import com.codecool.dao.PoemDao;
import com.codecool.dao.database.DatabasePoemDao;
import com.codecool.dto.PoemDto;
import com.codecool.model.Poem;
import com.codecool.service.PoemService;
import com.codecool.service.exception.ServiceException;
import com.codecool.service.simple.SimplePoemService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/protected/poem")
public final class PoemServlet extends AbstractServlet {

    // https://www.postgresql.org/docs/current/static/errcodes-appendix.html
    private static final String SQL_ERROR_CODE_UNIQUE_VIOLATION = "23505";

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try (Connection connection = getConnection(req.getServletContext())) {
            PoemDao PoemDao = new DatabasePoemDao(connection);
            PoemService PoemService = new SimplePoemService(PoemDao);

            String id = req.getParameter("id");

            Poem poem = PoemService.getPoem(id);

            sendMessage(resp, HttpServletResponse.SC_OK, new PoemDto(poem));
        } catch (ServiceException ex) {
            sendMessage(resp, HttpServletResponse.SC_OK, ex.getMessage());
        } catch (SQLException ex) {
            handleSqlError(resp, ex);
        }
    }
}
