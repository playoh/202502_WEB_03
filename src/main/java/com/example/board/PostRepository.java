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


}
