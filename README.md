# robin-on-rails
a light twitter client built on rails
things for you to add
---
**enter your respective keys into**   
/app/controllers/oauth_one_controller.rb _line 44_  
```
$TWITTER_KEY = '###'
$TWITTER_SECRET = '###'
```
**and**  
/config/initializers/twitter.rb  

if you are getting SSL errors you may have to follow this to define certificate authorities:
https://gist.github.com/fnichol/867550

required gems
---
* oauth  
* twitter
* tweetstream  

![twitter](http://upload.wikimedia.org/wikipedia/en/thumb/9/9f/Twitter_bird_logo_2012.svg/100px-Twitter_bird_logo_2012.svg.png "Twitter")
![rails](http://rubyonrails.org/images/rails.png "Rails")