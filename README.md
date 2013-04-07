# Example Padrino Student Directory

This is a little padrino app I knocked together to demonstrate how much easier our life is, once we introduce model view controller (MVC), object-relational mapping (ORM) and a web framework like padrino into the mix.

# How to

Here are the steps I took to make this app:

1. gem install padrino
2. padrino g project student_directory -d activerecord -e erb -t shoulda -b
3. cd student_directory
4. padrino g controller People get:index post:create
5. padrino g model Person type:string name:string email:string github:string twitter:string reason_for_joining:string iq:integer
6. padrino g model Student -s
7. padrino g model Instructor -s
8. Change the Student and Instructor models to use Person as their superclass
9. padrino rake ar:create:all
10. padrino rake ar:migrate
11. padrino s
12. Create view app/views/people/index.erb with a simple iterator
13. Create view app/views/people/new.erb with a simple form
14. padrino g controller Student get:index get:new
15. padrino g controller Instructor get:index get:new
16. Create the relevant type of Person object in the Student controller and Instructor controller
17. Put a link to both in the layout

# TODO

1. Port your apps over to padrino. Cut+paste if necessary - see how much we can safely leave behind!
2. Pretty it up, use some HTML / CSS to make it nice
3. Restore the private beta protection, using the starting point in app/app.rb. Let's stick with coolbananas so that we can share it with London / San Francisco
4. When you're ready to deploy, update your config/database so that it looks like the following:

```ActiveRecord::Base.configurations[:production] = {
  :adapter => 'mysql2',
  :host => 'titan.dangarland.co.uk',
  :database => 'wdi_sd',
  :username => 'wdi_sd',
  :password => 'twisty66,backflip'
}```

If all goes well, you ought to be able to push to heroku:

* Login to Heroku by typing:

    heroku login
* Create an app on Heroku using:

    heroku create
    
* Make a note of the URL it gives you. Will be something like 
http://cool-bananas-922.herokuapp.com. 
* Push the example app from your cloned repository to your heroku repository:

    git push heroku master
* Cut+paste your heroku URL into your favourite web browser. You should see 
the example app.
* If its worked, you ought to see the students and instructors who have already signed up. 