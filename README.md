# microservices-dummyapp1

This is a single-model Rails app, designed for testing our microservices architecture.

The model is `Car`, and the functionality of the app is to park cars if there are spaces available.

First, initialize the database with `rails db:reset`.

To test the architecture, there are two tasks available to you:

+ `rails cars:park_single`
  
  This task will query dummyapp2 to see if there are any available parking spaces. If there are none, it will tell you.

  If there are available spaces, it will take the first unparked car, and park it in that space, and will update dummyapp2 to match.

  If all cars have already been parked, it will tell you that too.

+ `rails cars:unpark_all`

  Very simply, this unparks all cars, and updates dummyapp2 to match.

## Setup

1. Bundle
1. Create a `database.yml` file which points to the appropriate database.
1. Profit
