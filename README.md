# README

This is the solution for the Beyond Finance coding assignment. 

It should not be ruby version dependent, but was biult using Ruby 3.1.2.

To run please follow the usual steps:

```
bundle install
rails db:create
rails db:migrate
rails s
```

The main page has been left quite ugly, but I didn't think getting a front end was the point of this assignment.

There are a few models defined, with corresponding controllers for getting the CRUD operations working.

The models are `user`, `campaign`, `azzet` (asset is a reserved word in Rails and was causing a ton of issues), and `criteria`.

I have attached a postman collection in the repository for ease of testing. Creating specs didn't solve the problem of populating data.

I started working on specs but realized rather quickly that postman seemed to work better for what I was doing. Adding specs to models that didn't really contain much logic didn't seem to be a good spend of time.

The main 'result' is at `/campaigns` where you can then click through to a specific campaign.
