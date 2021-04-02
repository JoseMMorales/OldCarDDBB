# OldCar Database MySQL
### Database for final project of Full Stack Development Bootcamp at CodeSpace(Malaga).

## About this project...
OldCar Database, it has been structured by following [normalization](https://en.wikipedia.org/wiki/Database_normalization) process to organise data, creating columns, keys and tables to establish relationships between them, gaining full protection in the data used and making the database more flexible by eliminating redundancy and inconsistent dependency.

<h2 align="left">
  <img src="https://user-images.githubusercontent.com/43299285/113404704-de66cd00-93a8-11eb-8275-e03cb297044c.png" width="60">
  MySQL Database Schema...
</h2>

[MySQL](https://www.mysql.com/) is the service used to form relationships between tables, in this project I utilise relationship types like Many-to-One, One-to-Many and Many-to-Many to reach outcome required in each scenario. 

## Design...

<div align="center">

![Screenshot 2021-04-02 at 10 47 03](https://user-images.githubusercontent.com/43299285/113399639-d440d080-93a0-11eb-9043-243ace1c4026.png)

</div>

<h2 align="left">
  <img src="https://user-images.githubusercontent.com/43299285/113404814-153ce300-93a9-11eb-9832-1db1e3999849.png" width="40">
  Implementation With Doctrine..
</h2>

In this stage, the Oldcar Database was implemented following object-relational mapper ([ORM](https://en.wikipedia.org/wiki/Object%E2%80%93relational_mapping)) functionality, in order to achieve this I have used the resources and tools available in [Symfony](https://symfony.com/) and [Doctrine](https://www.doctrine-project.org/projects/doctrine-orm/en/current/tutorials/getting-started.html). Basically, this process was generating entities based on the existing OldCar database model and finally creating all getters and setters in PHP Classes.

Further information [here](https://symfony.com/doc/current/doctrine/reverse_engineering.html).

<h2 align="left">
  <img src="https://user-images.githubusercontent.com/43299285/113404941-4c12f900-93a9-11eb-93d1-9e5a4fb8b8b5.png" width="60">
  PHPMyAdmin Support Locally...
</h2>

For a better overview of how things are in the Database and support any admin action, I opted for [PHPMyAdmin](https://www.phpmyadmin.net/) which is very handy in these cases as MySQL Database.

## Installing..
* Clone the project to your local directory
* `$git clone https://github.com/JoseMMorales/OldCarDDBB.git`
* `$cd OldCarDDBB` to display files in your editor.

## :exclamation::exclamation: Please note :exclamation::exclamation: 
[XAMPP](https://www.youtube.com/watch?time_continue=1&v=h6DEDm7C37A&feature=emb_logo) is the cross-platform web server solution used in my case, but you can use another one to run the DDBB locally. [Download here!!](https://www.apachefriends.org/index.html)

## Author
Jose MMorales
