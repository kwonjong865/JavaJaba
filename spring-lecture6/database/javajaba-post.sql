CREATE TABLE javajaba.post (
   postid INT AUTO_INCREMENT NOT NULL primary KEY,
   category VARCHAR(20),
   maker VARCHAR(20),
   password VARCHAR(20),
   phone VARCHAR(20),
   title VARCHAR(20),
   itemname VARCHAR(20),
   price INT,
   content VARCHAR(20),
   makedate DATE,
   imagefile VARCHAR(20)

) ENGINE = InnoDB ROW_FORMAT = DEFAULT;