create schema nba_players charset hebrew;

use nba_players;

create table nba_player_name (
name_id int not null auto_increment primary key,
player_name varchar(40) not null
);

create table High_School (
High_School_Id int not null auto_increment primary key,
High_School varchar(50)
);

create table college (
college_id int not null auto_increment primary key,
college varchar(40)
);

create table playing_position (
playing_position_id int not null auto_increment primary key,
playing_position varchar(5)
);

create table start_team (
start_team_id int not null auto_increment primary KEY,
start_team varchar(50)
);

create table current_team (
current_team_id int not null auto_increment primary KEY,
current_team varchar(50)
);

create table player_status (
status_id int not NULL auto_increment primary key,
player_status varchar(15)
);

create table coach (
coach_id int not null auto_increment primary key,
coach varchar(40)
);

create table awards (
awards_id int not null auto_increment PRIMARY key,
awards varchar(40)
);

create table nba_roster_history (
enumerator int auto_increment not null primary key,
name_id int,
birthplace varchar(100),
birthdate date,
High_School_Id int,
college_id int,
playing_position_id int,
drafted varchar(1),
start_year int,
start_team_id int,
current_team_id int,
status_id int,
coach_id int,
awards_id int,
foreign key (name_id) references nba_player_name(name_id),
foreign key (High_School_Id) references High_School(High_School_id),
foreign key (college_id) references college(college_id),
foreign key (playing_position_id) references playing_position(playing_position_id),
foreign key (start_team_id) references start_team(start_team_id),
foreign key (current_team_id) references current_team(current_team_id),
foreign key (status_id) references player_status(status_id),
foreign key (coach_id) references coach(coach_id),
foreign key (awards_id) REFERENCES awards(awards_id),
unique unq_nba_roster_history
(name_id,high_school_id,college_id,playing_position_id,start_team_id,current_team_id,status_id,coach_id,awards_id)
);
