package com.example.board;

import java.util.ArrayList;
import java.util.List;

public class PostRepository {
    private static List<Post> posts = new ArrayList<>();
    private static int currentId = 1;

    static {
        posts.add(new Post(currentId++,"첫 글입니다.","관리자",
                " adim@example.com","1234","테스트용 첫 글"
                ));
        posts.add(new Post(currentId, "공지사항", "관리자",
                " adim@example.com","1234","공지사항 영역"));
    }
    public List<Post> findAll(){
        return posts;
    }
    public Post findById(int id){
        for(Post p : posts){
            if(p.getId() == id) return p;
        }
        return null;
    }
    public Post create(String title, String writer, String email, String password, String content){
        Post p = new Post(currentId++,title,writer,email,password,content);
        posts.add(p);
        return p;
    }
    public boolean update(int id, String title, String writer, String email, String password, String content){
        Post p = findById(id);
        if(p==null) return false;
        p.setTitle(title);
        p.setWriter(writer);
        p.setEmail(email);
        p.setPassword(password);
        p.setContent(content);
        return true;
    }
    public boolean delete(int id){
        Post p = findById(id);
        if(p==null) return false;
        posts.remove(p);
        return true;
    }
}
