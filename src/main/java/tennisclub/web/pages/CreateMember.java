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

@WebServlet("/members/*")
public class CreateMember extends BaseServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        if(req.getPathInfo() == null) {
            render("TennisClub: Show Members", "/WEB-INF/pages/createmember.jsp", req, resp);
        } else {
            int memberid = Integer.parseInt(req.getPathInfo().substring(1));
            log(req, "Accessing Member " + memberid);

            try {
                Member member = api.findMemberById(memberid);
                req.setAttribute("member", member);
                render("TennisClub: " + member.getName(), "/WEB-INF/pages/memberpage.jsp", req, resp);
            } catch (NoMemberExists noMemberExists) {
                resp.sendError(404, "Member does not exist");
            }
        }

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        if(username == null || username.equals("")){
            resp.sendError(400, "Expected a username or password");
        } else {
            Member member = api.createMember(username);
            resp.sendRedirect(req.getContextPath() + "/members/" + member.getId());
        }

    }
}
