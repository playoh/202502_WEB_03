FROM tomcat:9.0

# war 파일을 ROOT.war로 덮어쓰기 → 루트(/)에서 바로 열림
ADD target/JSPProject_001-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war

CMD ["catalina.sh", "run"]
