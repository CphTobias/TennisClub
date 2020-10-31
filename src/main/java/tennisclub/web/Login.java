package tennisclub.web;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/login")
public class Login extends BaseServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        render("TennisClub: Login",
                "/WEB-INF/login.jsp",
                req, resp);

        req.getRequestDispatcher("/WEB-INF/base.jsp").forward(req, resp);
    }
}
