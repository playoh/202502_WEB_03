package com.example.board;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/post")
public class PostServlet extends HttpServlet {

    private PostRepository repo = new PostRepository();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        String action = request.getParameter("action");
        if (action == null || action.equals("list")) {
            // 목록
            List<Post> posts = repo.findAll();
            request.setAttribute("posts", posts);
            request.getRequestDispatcher("/list.jsp").forward(request, response);

        } else if ("view".equals(action)) {
            int id = Integer.parseInt(request.getParameter("id"));
            Post post = repo.findById(id);
            request.setAttribute("post", post);
            request.getRequestDispatcher("/view.jsp").forward(request, response);

        } else if ("writeForm".equals(action)) {
            request.getRequestDispatcher("/write.jsp").forward(request, response);

        } else if ("editForm".equals(action)) {
            int id = Integer.parseInt(request.getParameter("id"));
            Post post = repo.findById(id);
            request.setAttribute("post", post);
            request.getRequestDispatcher("/edit.jsp").forward(request, response);

        } else if ("delete".equals(action)) {
            int id = Integer.parseInt(request.getParameter("id"));
            repo.delete(id);
            response.sendRedirect(request.getContextPath() + "/post?action=list");
        } else {
            response.sendRedirect(request.getContextPath() + "/post?action=list");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        String action = request.getParameter("action");
        if ("write".equals(action)) {
            String title = request.getParameter("title");
            String writer = request.getParameter("writer");
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            String content = request.getParameter("content");

            Post created = repo.create(title, writer, email, password, content);
            request.setAttribute("post", created);
            request.getRequestDispatcher("/write_ok.jsp").forward(request, response);

        } else if ("edit".equals(action)) {
            int id = Integer.parseInt(request.getParameter("id"));
            String title = request.getParameter("title");
            String writer = request.getParameter("writer");
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            String content = request.getParameter("content");

            boolean ok = repo.update(id, title, writer, email, password, content);
            request.setAttribute("success", ok);
            request.setAttribute("post", repo.findById(id));
            request.getRequestDispatcher("/edit_ok.jsp").forward(request, response);

        } else {
            response.sendRedirect(request.getContextPath() + "/post?action=list");
        }
    }
}
