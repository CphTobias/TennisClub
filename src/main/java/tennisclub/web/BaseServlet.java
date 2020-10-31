package tennisclub.web;

import tennisclub.api.TennisClub;
import tennisclub.infrastructure.DBMemberRepository;
import tennisclub.infrastructure.Database;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.crypto.Data;
import java.io.IOException;

@WebServlet
public class BaseServlet extends HttpServlet {
    protected static final TennisClub api;

    static {
        api = createTennisClub();
    }

    private static TennisClub createTennisClub() {
        Database db = new Database();
        return new TennisClub(new DBMemberRepository(db));
    }

    protected void render(String title, String content, HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        req.setAttribute("version", api.getVersion());
        req.setAttribute("title", title);
        req.setAttribute("content", content);
        req.getRequestDispatcher("/WEB-INF/base.jsp").forward(req, resp);
    }
}
