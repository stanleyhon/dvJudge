drop table if exists users;
create table users (
	id integer primary key autoincrement,
	username text not null,
	email text not null,
	password text not null,
	salt text not null,
    solved_challenges text,
    image text DEFAULT "default_profile.jpg" 
);

drop table if exists challenges;
create table challenges (
	id integer primary key autoincrement,
	name text not null,
	description text not null,
	input text,
	output text,
	sample_tests text,
	input_desc text,
	output_desc text,
	com_flag integer,
    submitter_id integer not null DEFAULT 3
);

drop table if exists submissions;
create table submissions (
	id integer primary key autoincrement,
    user_id integer not null,
    challenge_id integer not null,
    timestamp DATETIME DEFAULT CURRENT_TIMESTAMP,
	status text not null,
    status_info text not null,
    language text not null,
    code text not null
);

drop table if exists challenge_comments;
create table challenge_comments (
	username text not null,
	challenge_id integer not null,
	comment text not null,
	post_time DATETIME DEFAULT CURRENT_TIMESTAMP
);

drop table if exists playlists;
create table playlists (
    id integer primary key not null,
    name text not null,
    owner_id integer not null,
    challenges text not null
);

drop table if exists forum_page;
create table forum_page(
	id integer primary key autoincrement,
	problem_id integer not null,
	original_poster text not null, 
	post_name text not null,
	post_body text not null,
	post_time DATETIME DEFAULT CURRENT_TIMESTAMP
);

drop table if exists forum_comment;
create table forum_comment(
	comment_id integer primary key autoincrement,
	forum_page integer not null,
	username text not null,
	comment text not null,
	post_time DATETIME DEFAULT CURRENT_TIMESTAMP
);

drop table if exists comment_upvotes;
create table comment_upvotes(
	user_id integer not null,
	comment_id integer not null
);

drop table if exists comment_downvotes;
create table comment_downvotes(
	user_id integer not null,
	comment_id integer not null
);

drop table if exists categories;
create table categories (
    name text not null,
    challenges text not null
);
