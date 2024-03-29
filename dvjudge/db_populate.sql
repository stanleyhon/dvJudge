-- Challenges
insert into challenges (name,description,input,output,sample_tests,input_desc,output_desc,com_flag,submitter_id)
	values ('Count to N','Create a program that prints "1..n"',"5","1 2 3 4 5","Input: 10; Output: 1 2 3 4 5 6 7 8 9 10","A single integer — the (comparatic) something of something","A single line containing the sequence of integers from 1 to n, i.e. 1 2 3 ... n-1 n",2,1);

insert into challenges (name,description,input,output,sample_tests,input_desc,output_desc,com_flag,submitter_id)
	values ('Sum to N','Create a program that prints sum 1..n',"4","10","Input: 10; Output: 55","A single integer — the (comparatic) something of something","A single integer — the sum of the integers from 1..n",2,2);

insert into challenges (name,description,input,output,sample_tests,input_desc,output_desc,com_flag,submitter_id)
	values ('Dota 2 is a great game','This is a description',"4","10","Input: 10; Output: 55","A single integer — the (comparatic) something of something","A single integer — the sum of the integers from 1..n",1,3);

insert into challenges (name,description,input,output,sample_tests,input_desc,output_desc,com_flag,submitter_id)
	values ('Valve cant program','This is a different description',"4","10","Input: 10; Output: 55","A single integer — the (comparatic) something of something","A single integer — the sum of the integers from 1..n",1,4);

insert into challenges (name,description,input,output,sample_tests,input_desc,output_desc,com_flag,submitter_id)
	values ('Invert Case','Given an input string, print the string with all the letters with their cases swapped.',"AbCd1234.","aBcD1234.","Input: AbC123; Output: aBc123","Any string of characters","Same input string with letter cases swapped", 2, 4);

insert into challenges (name,description,input,output,sample_tests,input_desc,output_desc,com_flag)
	values ('Number of As','Given an input string, print the number of upper and lowercase As that occur.',"AAAbcdaaa","6","Input: abACad123; Output: 3","Any string of characters","A single integer", 2);

-- Daniel added challenges
insert into challenges (name,description,input,output,sample_tests,input_desc,output_desc,com_flag)
    values ('Sort an array','Given an input of 6 numbers, print the input in sorted order.',"6 2 5 1 4 3","1 2 3 4 5 6","Input: 6 2 5 1 4 3; Output: 1 2 3 4 5 6","Any 6 integers","Six integers", 0);

insert into challenges (name,description,input,output,sample_tests,input_desc,output_desc,com_flag)
    values ('N to the power of N','Given an input print that number to the power of itself.',"4","256","Input:4; Output: 256","An integer","A single integer", 0);

insert into challenges (name,description,input,output,sample_tests,input_desc,output_desc,com_flag)
    values ('Sum input','Sum input numbers until EOF is entered.',"1 2 3 4 5 6 7 8 9 5","50","Input: 1 2 3 4 5 6 7 8 9 5; Output: 50","Any number of integers","A single integer", 0);

insert into challenges (name,description,input,output,sample_tests,input_desc,output_desc,com_flag)
    values ('Print N by M box','Given two numbers as input, print a box of "#" with n rows and m columns.',"4 4","####\n####\n####\n####\n","Input: 4 4; Output: ####\n####\n####\n####\n","Two integers","A box of hashes with n rows and m columns", 0);

insert into challenges (name,description,input,output,sample_tests,input_desc,output_desc,com_flag)
    values ('Print "Hello world!"','Given no input print the string "Hello world!".',"","Hello world!","Input: ; Output: Hello World!","None","Hello world!", 0);

insert into challenges (name,description,input,output,sample_tests,input_desc,output_desc,com_flag)
    values ('Celsius to Fahrenheit','Given degrees celsius print out the equivalent temperature in degrees Fahrenheit. The formula is F = C * (9/5) + 32.',"20","68","Input: 20; Output: 68","A single integer","A single integer", 0);

insert into challenges (name,description,input,output,sample_tests,input_desc,output_desc,com_flag)
    values ('Print string backwards','Given a string print it backwards.',"Hello","olleH","Input: Hello; Output: olleH","A string","A string", 0);

insert into challenges (name,description,input,output,sample_tests,input_desc,output_desc,com_flag)
    values ('Interesting Numbers','John loves numbers. He finds some numbers more interesting than others. If a number is only a multiple of 2,3 or 5, then John find thems interesting. Help John determine if a number is an interesting number',"5|10|70|6750000|47250000","True|True|False|True|False","Input: 2; Output: True","A number which john would like to determine if it is interesting","True if the number is an interesting number and False otherwise", 0);

-- Accounts
-- NOTE: These accounts are not valid on production, and as such are not a security risk.
-- dannyeei:daniel
insert into users (username, email, password, salt, solved_challenges, image)
	values ('dannyeei', 'danielslater811@hotmail.com', 'd9bdde89547d18f0d6bd72d9a17133ae2cb023357357f51c5d226cbf2d02a056e89102bed4c29e0f2827a952027c9e0a3c2b3545735f0a1c643427d81fc75281', 'thisissamplesalt', '1', '1_profilepic.jpg');

-- typical:typical
insert into users (username, email, password, salt)
	values ('typical', 'typical@hotmail.com', 'dcaa9d20adff97448541892dd0f13536e3379e2503b03b67411a69d902237d02b17dc74a9f955f831532d449104004f8151b52f09ddf8c2b18e1d78dc720ade1', 'saltandpepper');

-- admin:default
insert into users (username, email, password, salt, image)
	values ('admin', 'admin@hotmail.com', '0b491227c0328e4c87c03fe4749b0b3a78d6da7094f5ef249b99caa759c6f1b1b6c952abb73e9448c5468fb7635f2d90a2f83b14e466c95b19b100fb9aec3c19', 'yumyumsaltinmytum', '3_profilepic.png');

-- stanley:default
insert into users (username, email, password, salt, solved_challenges, image)
	values ('stanley', 'stanleyhon348@gmail.com', '0b491227c0328e4c87c03fe4749b0b3a78d6da7094f5ef249b99caa759c6f1b1b6c952abb73e9448c5468fb7635f2d90a2f83b14e466c95b19b100fb9aec3c19', 'yumyumsaltinmytum', '1|6', '4_profilepic.jpg');

-- Submissions
insert into submissions (user_id, challenge_id, status, status_info, language, code)
    values ('1', 1, 'Accepted', 'This is a status info\nI would have like a compile error or something in here', 'Python', 'blergh blah code here goes ');

insert into submissions (user_id, challenge_id, status, status_info, language, code)
    values ('1', 2, 'Incorrect', 'Blab blah you failed some testcases man', 'C++', 'code of a thingy');

insert into submissions (user_id, challenge_id, status, status_info, language, code)
    values ('1', 1, 'Compile Error', 'Do you even C?', 'C', 'some code c code whatever');

insert into submissions (user_id, challenge_id, status, status_info, language, code)
    values ('2', 1, 'Compile Error', 'Do you even C?', 'C', 'code blerlkjsdf');

-- Playlists
insert into playlists (id, name, owner_id, challenges)
    values (0, "Public Challenges", 3, "1|2|5|6");

insert into playlists (id, name, owner_id, challenges)
    values (1, "my playlist first ever", 1, "1|3");

insert into playlists (id, name, owner_id, challenges)
    values (2, "my second playlist ever", 1, "3|4");

insert into playlists (id, name, owner_id, challenges)
    values (3, "different playlist", 2, "1|2|3|4");


-- Categories
insert into categories (name, challenges)
    values ("Beginner", "1|2");

insert into categories (name, challenges)
    values ("Data Structures", "5|6");

insert into categories (name, challenges)
    values ("Algorithms", "3|4");

insert into categories (name, challenges)
    values ("Security", "1|2|3|4");

insert into categories (name, challenges)
    values ("Artificial Intelligence", "");

insert into categories (name, challenges)
    values ("Mathematics", "");

-- Forums
insert into forum_page (problem_id, original_poster, post_name, post_body)
    values ("1", "dannyeei", "How do I print something in C?", "I am coding in C and don't know the command for print. If anyone could help me with this it would be much appreciated");

insert into forum_page (problem_id, original_poster, post_name, post_body)
    values ("1", "typical", "How do I use scanf?", 'I am coding in C and currently am trying to make the value i the value entered. Is scanf("%d", i); correct?');

insert into forum_page (problem_id, original_poster, post_name, post_body)
    values ("1", "typical", "What is a 'C' and why is it in the top corner?", 'I am coding and see "C" in the top corner of my work. I thought it was an A standard :( what can I do to make it an A?!');

-- Forum comments
insert into forum_comment (forum_page, username, comment)
    values ("1", "typical", "You can use the command printf");

insert into forum_comment (forum_page, username, comment)
    values ("1", "dannyeei", "Thanks! That solved the problem!");

-- Comment upvotes
insert into comment_upvotes (user_id, comment_id)
    values ("1", "1");

insert into comment_upvotes (user_id, comment_id)
    values ("2", "1");

insert into comment_upvotes (user_id, comment_id)
    values ("3", "1");

insert into comment_upvotes (user_id, comment_id)
    values ("4", "1");

insert into comment_upvotes (user_id, comment_id)
    values ("5", "1");

insert into comment_upvotes (user_id, comment_id)
    values ("1", "2");

insert into comment_upvotes (user_id, comment_id)
    values ("2", "2");






