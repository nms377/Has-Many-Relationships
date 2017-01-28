
\i has_many_blogs.sql;

--1

SELECT * FROM users;


--2
SELECT * FROM posts
WHERE posts.users_id = 100;

-- 3
SELECT posts.*, first_name, last_name FROM users
INNER JOIN posts
ON posts.users_id = users.id
WHERE  users_id = 200;

--4
SELECT posts.*, username FROM users
INNER JOIN posts
ON posts.users_id =users.id
WHERE first_name = 'Norene'
AND last_name = 'Schmitt';

--5
SELECT users.username FROM users
INNER JOIN posts
ON posts.users_id = users.id
WHERE posts.created_at > TIMESTAMP WITH TIME ZONE '2015-01-01';

--6
SELECT posts.title, posts.content, users.username FROM users
INNER JOIN posts
ON posts.users_id = users.id
WHERE posts.created_at < TIMESTAMP WITH TIME ZONE '2015-01-01';


--7
SELECT comments.*, posts.title as "Post Title"
FROM posts
INNER JOIN comments
ON comments.posts_id = posts.id;


--8
SELECT comments.*, posts.title as "Post Title", posts.url as "post_url", comments.body as "comment_body"
FROM posts
INNER JOIN comments
ON comments.posts_id = posts.id
WHERE posts.created_at < TIMESTAMP WITH TIME ZONE '2015-01-01';

--9

SELECT comments.*, posts.title as "post_title", posts.url as "post_url", comments.body as "comment_body"
FROM posts
ON comments.posts_id = posts.id
WHERE posts.created_at > TIMESTAMP WITH TIME ZONE '2015-01-01';

--10

SELECT comments.*, post_title, post_url, comment_body
FROM posts
ON comments.posts_id = posts.id
WHERE comment_body LIKE '%USB%';

--11

SELECT post_title, users.first_name, users.last_name, comment_body
FROM posts
ON comments.posts_id = posts.id
WHERE comment_body LIKE '%matrix%';

--12

SELECT users.first_name, users.last_name, comment_body
FROM posts
ON comments.posts_id = posts.id
WHERE comment_body LIKE '%SSL%'
AND posts.content LIKE '%dolorum%';

--13

SELECT users.first_name as "post_author_first_name", users.last_name as "post_author_last_name", posts.title as "post_title", users.username as "comment_author_username", comment_body
FROM posts
ON comments.posts_id = posts.id
WHERE comment_body LIKE '%SSL%'
OR '%firewall%'
AND posts.content LIKE '%nemo%';


