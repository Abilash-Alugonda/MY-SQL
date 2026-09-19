select current_date();
select curdate();
select current_time();
select curtime;
select now();
select current_timestamp();
select date('2026-09-12');
select time('2026-04-15 15:45:00');
select year(now());
select month(now());
select day(now());
select dayname(now());
select monthname(now());
select date_add(now(),interval 20 day);
select adddate(now(), interval 2 month);
select datediff(now(), '2026-09-12');
select str_to_date('2026-03-30','%y-%m-%d');
select date_format('2026-09-23','%w %m %y');
select date_format(now(),'%d-%m-%y %h-%i-%s');
select char_length('hello');
select char_length('@');
select concat('my','sql');
select concat('python',' ','programming','lang');
select upper('hello');
select lower('hello');
select left('database',5);
select right('database',4);
select substring('database',5);
select substring('python programming lang',10,7);
select locate('a','database');
select replace('xxxxxxxxxxxxxllloxxx','x','');
select trim('    hello   world   ');
select ltrim('   helloworld');
select rtrim('hello    ');
select reverse('mysql');
select rpad('123',8,'*');
select repeat('mysql-',3);





