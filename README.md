# Checkout System
A simple checkout system that calculates the total amount of the items scanned depending on the promos(free item and bulk order) available.

## Technologies Used
- Ruby 3.1.2
- Rails 7.0.3.1
- PostgreSQL 1.1

## Gems Used
- bootstrap

## Installation and Usage
Clone the repository in your desired directory, cd into the cloned repository, and install all dependencies.
```
$ git clone https://github.com/emerjohncy/checkout_system.git
$ cd checkout_system
$ bundle install
```
Create database, migrate database, and seed database to add initial data
```
$ rails db:create db:migrate db:seed
```
Finally, run the server
```
rails s
```
The application will be running in https://localhost:3000. Open it in your browser.

## ERD
![This is an image of ERD used in the project](https://github.com/emerjohncy/checkout_system/blob/main/app/assets/images/erd.png)

## Demo
![This is a demo image of the project](https://github.com/emerjohncy/checkout_system/blob/main/app/assets/images/demo_one.png)
![This is a demo image of the project](https://github.com/emerjohncy/checkout_system/blob/main/app/assets/images/demo_two.jpg)
