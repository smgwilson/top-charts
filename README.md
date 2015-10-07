### PURPOSE:
This project is an approximation of the Apple App Store “Top Charts” page found on the iphone’s App Store.
It has a navigation menu and 3 views that list the top 400 apps in sets of 50 per page.

1. Paid apps - apps for which the price is greater than zero, sorted by order of download count for “today”, with the most downloaded app first
2. Free Apps - apps for which the price is zero, sorted by order of download count for “today”, with the most downloaded app first
3. Top Grossing Apps - both paid and free apps sorted by their download revenue for today

### FEATURES:
Each application includes
* The application name
* The publisher or company name
* The application icon
* A link to the application that opens in a separate browser window
* A visual representation of the “star” rating for the application
* The price of the app
* The number of “in country” ratings which have already been provided for the app
* The ranking number for the current listing selection (1 st , 2 nd , 3 rd , etc.)

### TECHNOLOGY STACK:
* MongoDB
* Rails 4.2.0
* Ruby 2.1.2
* Javascript
* Twitter Bootstrap

### GEMS:
* Mongoid
* will_paginate
* bootstrap-sass

### SEEDING THE DATABASE:
* This project includes a seed.json file and a rake task in seeds.rb.  Run 'rake db:seed' to populate the development
  database with a Mongo collection called 'applications'

### DESIGN CONSIDERATIONS FOR PERSISTENCE:
* Data was pre-cleaned before conversion to a JSON file. If using relational DB, I would have set up some data validation rules
  within the table schema itself.
* Field names were aliased as part of best practice in MongoDB so long field names would not need to be repetitively stored
  in the DB

### DESIGN CONSIDERATIONS FOR APPLICATION CODE:
* Partials were used to keep views DRY.
* Created named scopes to chain conditions
* Created some appliation helper methods to assist in representing the model within the views

### DESIGN CONSIDERATIONS FOR STYLING:
* Twitter Bootstrap was used for responsiveness
* I used a CSS reset file in an effort to make app view consistent across browsers. In my CSS manifest, I specify
  each stylesheet in correct load order rather than loading the tree, which would have been alphabetical.
* Due to the amount of styling solely for pagination, I isolated this to it's stylesheet.

### HACKS/BUGS/DESIRED IMPROVEMENTS:
* There is a bug in the table syling where the line between applications breaks over the price field
* TDD was not employed for this application.  A test suite should be developed
* While the pages are responsive, the currently menu collapses for small devices in such a way that the top
  listing on the page is partially obscured
* The navigation menu is not DRY and is currently being repeated in each view to set each navigation pill to an active state.

