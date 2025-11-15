package com.example.board;

public class Post {
    private int id;
    private String title;
    private String writer;
    private String email;
    private String password;
    private String content;

    public Post() {}

    public Post(int id, String title, String writer,
                String email, String password, String content) {
        this.id = id;
        this.title = title;
        this.writer = writer;
        this.email = email;
        this.password = password;
        this.content = content;
    }

    public int getId() { return id; }
    public void setId(int id) { this.id = id; }

    public String getTitle() { return title; }
    public void setTitle(String title) { this.title = title; }

    public String getWriter() { return writer; }
    public void setWriter(String writer) { this.writer = writer; }

    public String getEmail() { return email; }
    public void setEmail(String email) { this.email = email; }

    public String getPassword() { return password; }
    public void setPassword(String password) { this.password = password; }

    public String getContent() { return content; }
    public void setContent(String content) { this.content = content; }
}
