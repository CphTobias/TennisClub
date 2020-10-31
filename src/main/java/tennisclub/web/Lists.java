package tennisclub.web;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/lists")
public class Lists extends BaseServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        render("TennisClub: Create a new list",
                "/WEB-INF/lists.jsp",
                req, resp);

        req.getRequestDispatcher("/WEB-INF/base.jsp").forward(req, resp);

    }
}
