package tennisclub.web.pages;

import tennisclub.domain.member.Member;
import tennisclub.domain.member.NoMemberExists;
import tennisclub.web.BaseServlet;

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

        try {
            Member member = api.findMemberList(1);
            render("TennisClub: Show Members",
                    "/WEB-INF/pages/members.jsp",
                    req, resp);
        } catch (NoMemberExists noMemberExists) {
            resp.sendError(404, "Vi kunne ikke finde dit member");
        }


    }
}
