# README

## Objective 

The objective of this small system is to have an application which would help 

The application would provide assistance for writing texts for a magazine. 

- what topics were covered in the past issues of the magazine
- what topics are already planned and assigned for future editions of the magazine

> I am going to focus on a anime related magazine, because this is what I am going to do. 
>
> 'redaktor' is the Polish word for 'editor'

## MVP  (first step)

The MVP would be as follows: 

- list of articles with tags
- list of magazine issues
- list of authors
- list of original works the articles are about (optional, depending on time)
- editors (!= authors) - basically admin users, authorisation via devise

The MVP shall be build with out-of-the-box UI, without any fancy design, but leave the possibility to add more sophisticated UI later. 

## Admin user in local environment

To set up initial admin user:

```
rails console
```

```ruby
Administrator.create(email: "admin@admin.com", password: "password", first_name: "Admin", last_name: "A")
```

## Dependencies

* ruby 2.7.0 - I chose the most modern, because the project is educational in nature
* rails 6.0.x

## TODO

- pagination
- add some tests
- circleCi configuration
- searchable select
