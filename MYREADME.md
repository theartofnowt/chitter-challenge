Chitter Challenge
=================

#Task

```
STRAIGHT UP

As a Maker
So that I can let people know what I am doing  
I want to post a message (peep) to chitter

As a maker
So that I can see what others are saying  
I want to see all peeps in reverse chronological order

As a Maker
So that I can better appreciate the context of a peep
I want to see the time at which it was made

As a Maker
So that I can post messages on Chitter as me
I want to sign up for Chitter

HARDER

As a Maker
So that only I can post messages on Chitter as me
I want to log in to Chitter

As a Maker
So that I can avoid others posting messages on Chitter as me
I want to log out of Chitter

ADVANCED

As a Maker
So that I can stay constantly tapped in to the shouty box of Chitter
I want to receive an email if I am tagged in a Peep
```
----------------------
screen shots of progress using localhost:

![screen shot 2017-08-06 at 14 38 30](https://user-images.githubusercontent.com/25685164/29007299-b90c3d4c-7af7-11e7-82fd-01122bd4b32d.png)

![screen shot 2017-08-06 at 14 43 35](https://user-images.githubusercontent.com/25685164/29007300-bd7f0788-7af7-11e7-8744-d989bfbedc2c.png)

![screen shot 2017-08-06 at 22 38 43](https://user-images.githubusercontent.com/25685164/29007318-3f2d9ff6-7af8-11e7-93a4-1b32c17a93dc.png)


* I tried to hand write my own css, instead of using bootstrap. I would like to know how to use css better.

----------------------
installation instructions:

```
clone repo
bundle install
psql
CREATE DATABASE chitter-challenge-test;
rake migrate database=test
rspec  		  
psql
CREATE DATABASE chitter-challenge-development;
rake migrate database=development
rackup

```
