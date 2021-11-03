# Blog app

A simple blog app

## Built With

- Ruby on Rails
- PostgreSQL

## Getting Started

To get a local copy up and running follow these simple example steps.

### Prerequisites

- [Ruby](https://www.ruby-lang.org/en/)
- [Rails](https://gorails.com/)

### Setup

- Make sure you have Ruby IRB installed on your computer
- Clone or download this repo on your machine
- Enter project directory

### Install

bundle install

### Database

```rb
# Create user
sudo -u postgres createuser blog -s

# Create the database
rake db:create

# Load the schema
rails db:schema:load

# Seed
rails db:seed

## Apply migration (only if you generate a new migration file)
rails db:migrate
```

### Run

rails server

### Test

```rb
rspec
```

### Troubleshoot

### Rspec failing

RAILS_ENV=test rake db:reset

## Authors

👤 **Sylvestre**

- GitHub: [@sylvestre](https://github.com/pasytchangwa)
- Twitter: [@Sylvestre](https://twitter.com/Sylvest10415595)
- LinkedIn: [Sylvestre Tchangwa](https://www.linkedin.com/in/pagkeusylvestre/)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Microverse
