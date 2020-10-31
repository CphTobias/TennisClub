package tennisclub.web;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/members")
public class Members extends BaseServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        render("TennisClub: Show Members",
                "/WEB-INF/members.jsp",
                req, resp);

        req.getRequestDispatcher("/WEB-INF/base.jsp").forward(req, resp);

    }
}
