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


CREATE TABLE  javajaba.usertable (
  userid varchar(45) NOT NULL DEFAULT '',
  pwd varchar(45) NOT NULL,
  username varchar(45) NOT NULL,
  usernum varchar(45) NOT NULL,
  email varchar(45) NOT NULL,
  address varchar(45) NOT NULL,
  mobile varchar(45) NOT NULL,
  PRIMARY KEY (userid)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;