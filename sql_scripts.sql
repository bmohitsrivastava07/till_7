use artgallerymanagement;
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `product_id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  `artist` varchar(45) DEFAULT NULL,
  `product_description` text DEFAULT NULL,
  `quantities` int(11) DEFAULT NULL,
  `quantity_available` int(11) DEFAULT NULL,
  `category` varchar(11) DEFAULT NULL,
  `image` MEDIUMBLOB  DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ;

DROP TABLE IF EXISTS `review`;
CREATE TABLE `review` (
  `review_id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `user_email` varchar(45) DEFAULT NULL,
  `date` datetime(6) DEFAULT NULL,
  `rating` decimal (3,2) DEFAULT NULL,
  `product_id` BIGINT(20) DEFAULT NULL,
  `review_description` text DEFAULT NULL,
  PRIMARY KEY (`review_id`)
) ;   
DROP TABLE IF EXISTS `checkout`;
CREATE TABLE `checkout` (
  `checkout_id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `user_email` varchar(45) DEFAULT NULL,
  `checkout_date` varchar(45) DEFAULT NULL,
  `return_date` varchar(45) DEFAULT NULL,
  `product_id` BIGINT(20) DEFAULT NULL,
  PRIMARY KEY (`checkout_id`)
);
DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages` (
  `message_id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `user_email` varchar(45) DEFAULT NULL,
  `title` varchar(45) DEFAULT NULL,
  `question` text DEFAULT NULL,
  `admin_email` varchar(45) DEFAULT NULL,
  `response` text DEFAULT NULL,
  `closed` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`message_id`)
)  ;
DROP TABLE IF EXISTS `history`;
CREATE TABLE `history` (
  `history_id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `user_email` varchar(45) DEFAULT NULL,
  `checkout_date` varchar(45) DEFAULT NULL,
  `returned_date` varchar(45) DEFAULT NULL,
  `title` varchar(45) DEFAULT NULL,
  `artist` varchar(45) DEFAULT NULL,
  `product_description` text DEFAULT NULL,
  `image` MEDIUMBLOB  DEFAULT NULL,
  PRIMARY KEY (`history_id`)
) ;
DROP TABLE IF EXISTS `payment`;
CREATE TABLE `payment` (
`payment_id` BIGINT(20) NOT NULL AUTO_INCREMENT,
`user_email` VARCHAR(45) DEFAULT NULL,
`amount` DECIMAL (10,2) DEFAULT NULL,
PRIMARY KEY (`payment_id`)
)
select * from product;
select * from review;
select * from checkout;
select * from history;
select * from messages;
select * from payment;
insert into product values(1,"Crystal","Ankita","Digital Art",10,7,"Digital Art","https://th.bing.com/th/id/R.7feade1e391875409fe65b4770016565?rik=WWSAJ4i5QcYb7w&riu=http%3a%2f%2fimages6.fanpop.com%2fimage%2fphotos%2f33400000%2fcolorful-roses-roses-33473280-1973-1840.jpg&ehk=dwa8Z5wreuHd2YcmXHU7PX1ZYvghBdtXWVnkMfzp4yA%3d&risl=&pid=ImgRaw&r=0");
insert into product values(2,"AutumnPathWay","Ankita","Spray Art",10,7,"Spray Art","https://th.bing.com/th/id/R.7feade1e391875409fe65b4770016565?rik=WWSAJ4i5QcYb7w&riu=http%3a%2f%2fimages6.fanpop.com%2fimage%2fphotos%2f33400000%2fcolorful-roses-roses-33473280-1973-1840.jpg&ehk=dwa8Z5wreuHd2YcmXHU7PX1ZYvghBdtXWVnkMfzp4yA%3d&risl=&pid=ImgRaw&r=0");
insert into product values(3,"TraditionalArt","Ankita","Mandala Art",10,7,"Mandala Art","https://th.bing.com/th/id/R.7feade1e391875409fe65b4770016565?rik=WWSAJ4i5QcYb7w&riu=http%3a%2f%2fimages6.fanpop.com%2fimage%2fphotos%2f33400000%2fcolorful-roses-roses-33473280-1973-1840.jpg&ehk=dwa8Z5wreuHd2YcmXHU7PX1ZYvghBdtXWVnkMfzp4yA%3d&risl=&pid=ImgRaw&r=0");
insert into product values(4,"Puzzle","Ankita","Digital Art",10,7,"Digital Art","https://th.bing.com/th/id/R.7feade1e391875409fe65b4770016565?rik=WWSAJ4i5QcYb7w&riu=http%3a%2f%2fimages6.fanpop.com%2fimage%2fphotos%2f33400000%2fcolorful-roses-roses-33473280-1973-1840.jpg&ehk=dwa8Z5wreuHd2YcmXHU7PX1ZYvghBdtXWVnkMfzp4yA%3d&risl=&pid=ImgRaw&r=0");
insert into product values(5,"WalkInThePark","Ankita","Mandala Art",10,7,"Mandala Art","https://th.bing.com/th/id/R.7feade1e391875409fe65b4770016565?rik=WWSAJ4i5QcYb7w&riu=http%3a%2f%2fimages6.fanpop.com%2fimage%2fphotos%2f33400000%2fcolorful-roses-roses-33473280-1973-1840.jpg&ehk=dwa8Z5wreuHd2YcmXHU7PX1ZYvghBdtXWVnkMfzp4yA%3d&risl=&pid=ImgRaw&r=0");
insert into product values(6,"WomanWithPeacock","Ankita","Spray Art",10,7,"Spray Art","https://th.bing.com/th/id/R.7feade1e391875409fe65b4770016565?rik=WWSAJ4i5QcYb7w&riu=http%3a%2f%2fimages6.fanpop.com%2fimage%2fphotos%2f33400000%2fcolorful-roses-roses-33473280-1973-1840.jpg&ehk=dwa8Z5wreuHd2YcmXHU7PX1ZYvghBdtXWVnkMfzp4yA%3d&risl=&pid=ImgRaw&r=0");
insert into product values(10,"rose","Ankita","Spray art",10,4,"Spray Art","data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEABsbGxscGx4hIR4qLSgtKj04MzM4PV1CR0JHQl2NWGdYWGdYjX2Xe3N7l33gsJycsOD/2c7Z//////////////8BGxsbGxwbHiEhHiotKC0qPTgzMzg9XUJHQkdCXY1YZ1hYZ1iNfZd7c3uXfeCwnJyw4P/Zztn////////////////CABEIAOABFgMBIgACEQEDEQH/xAAZAAADAQEBAAAAAAAAAAAAAAABAgMABAX/2gAIAQEAAAAA8tMzNlUbABsC2JzO5SSJgLJscEGJJLFdkLhqUyzQDaiqgCjFqK1kcZUDY1fBFB2ss4IMdXo1FM6FASsc7EoC23QsueIborSb9C8yio6xy6nExJGc7daRhHX9JeWuB5sD113Inaz8HMcW2HUJAwp6PD2R6PPZN0THQ8X7lvy+XPbbG2HT0Ds4+T0eIX4qdu44m1rc3N6/Dwoq7bUO3d6WTxLOvpctOvhnAB06pcvSORbaUjXZ39Pp5+NFV81eWyIuyKzdXT0P43LA9aZrz7uvzOeeBOzUaSLlFO7qtwcnKp7lTd3JUiUSRswymdpoa9PV083n8p3estXnvnWWVgVzX6IGKPq9bcvEhPXpqYqbs05Nn7I03seZMB+K3ZPjkxzMUvbk55CvQ1aCDtaXPwnsTbFWY6Dqp9KsOCHR6Cdfmcimt+aIc0oq222bidh09D6c8koqdgpzsSp6gigHlJatLBqx5JpsAAz7AZrdrckl013b6MuGia8kQYCWzYYuzdFurxFA3T7G4eRGeswAMMAUVs16WFocKL2egu4eVa56BMBhsCQ1rdPLdzLg5+57cvNPHNUyGCGmLuiVar2nPnHL0F+cY6b1SRWl4FtUvzvyCnqLysvIz+p5dcAq4M3UZ8uZn0HY1cZZrzPQWOCqijHp6PPQMVUVtZ1RFCypWj4qqTUDP6PlAAZle1GCImApWlCQs5Ko1OrgyjY5nZtOYAd6PSjZJzmo1ejhyYk4sTkUIf/EABoBAAMBAQEBAAAAAAAAAAAAAAABAgMEBQb/2gAKAgIQAxAAAADLMEAwEIRTYpSRTbAEm22Fz3kRouU1pvmOcQUxIgt1S659E1az0FcDk08VYuBICR9j6qxnubnRFJW83k85T8piECLfr3hn0ptU5qdUVgZivgnqfM8FA4+gaecgDG5IckrpvPPW/Fcmacemuw2vmVNOFd4TQ46LxnnPNC1Hou2JmrE0DJrCd8+qvOPMEGlql6L3blvEgHA52TeRyGBA6b2fXn0TqUhw4rAZI1qy8Y4DN9T651MFcdJTh5gqaV1FQ5WU+bWx0SHK1PZUvJ5x3R23m+URzgoMnUpJjbYBTA0JURIm220pSQU2xgOgEkJCptj/AP/EAB4QAAIDAAMBAQEAAAAAAAAAAAECAAMRBBASEyAU/9oACAEBAAECANPQgO+i3r1u9gEd6OwR2YYZmZkI630W3d3ewMIzoHdEEE0ww95mEGbu7vQnzig0j8GEdiCbDD3mYQVIabszEqyfER5qR6+gkKkCA7sPQGZCpDBgQAAlC8YwTxW5Rz1vnj8W1IIaCN3dP7MaNCMpH8tSLGqrgcv2JUWssawCV0WcRePfV+N3d0lp5wqKqbGspoQemJ7HH1GMprulI+b8mim7j2J1u7u+vUSfzCr5e7GqLmi1qGWqhKgtqeViWoBdfykVrruVpm7u7vr1olHIDEMpNTWETxyK+M5RrVfNDm9B4t5X0spZ2IUcQcW1N3Okm08ip7U5NIT7/wBC8lr6r7OUZXGPndBayqNPdFNfH405QY3HrMiR1EotNjlx2X9769G30R6LGE6kqf3l9rSw9");
delete from product where product_id=6;
