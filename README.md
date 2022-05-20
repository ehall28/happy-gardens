Access Happy Gardens [here](https://happy-gardens.herokuapp.com/)  
Github Repo can be found [here](https://github.com/ehall28/happy-gardens)

---
## Description of the project

---

### Problems/Purpose/Target Audience

#### Description

Happy Gardens is a two-way marketplace application where users can browse various listings of plants. If the user wishes to either purchase something or create a listing of their own, they will need to sign up beforehand. Happy Gardens is designed to help individuals find the right plant, while ensuring top service and reasonable prices.

#### Problems in the marketplace

There are a few problems in the online plant industry that Happy Gardens hopes to solve. Most online websites that sell plants, sell them for an exorbitant price and don't offer after service plant care. Happy Gardens allows users to sell their plants at a reasonable price, while also ensuring customer/buyer satisfaction knowing that they are receiving the best deal. Happy Gardens will also provide after service care/tips for anyone that needs a hand after buying their desired plant. Happy Gardens also removes the cost of delivery, as most other online plant website charge a great deal for delivery. Another problem that needs solving is that there aren't any places that offer a service for plant cuttings. Through Happy Gardens, anyone can upload an image of their garden and allow for people to make requests of a specific cutting from a specific plant within their garden, which Happy Gardens can also offer the service of ensuring that the cutting is taken from the plant correctly and planted correctly, giving the cutting the best chance to flourish for the customer. One last problem that most plant shops don't offer is plant health guarantees, to combat this, Happy Gardens will offer a 6 month plant health guarantee to all customers, ensuring returning clients and happy customers.

#### Purpose

The purpose of this two-way marketplace is to provide a service for like minded individuals to purchase plants and cuttings with ease, while also ensuring product quality and buyer/seller satisfaction. With the added bonus of after plant care, the customers are guaranteed the best experience. Happy Gardens aims to disrupt the problems within the online plant buying community and add a new convenient way to shop for plants online.     

#### Target audience

The target audience is anyone of any age that has an interest in plants and gardening, is looking to get into gardening or are even looking for a gift for someone else.

---
### Functionality / features

- The application is created using Ruby on Rails, which has been deployed to Heroku.
- The Devise gem was implemented to allow users to sign up, log in and out, as well as edit their account details or delete their account. Devise also handles prompting the user if the entered user name or password is incorrect and also aids the user in resetting the password if needed.  
- To ensure users were restricted to seeing certain pages, the Pundit gem was implemented. Pundit allows the implementation of a policy and the assignment of roles to users. All new users are automatically assigned the role of user, which grants access to the website and the ability to create listings.
- Image upload capability was handle by Cloudinary, which allowed sellers to upload images of the plant they wished to sell. Cloudinary also offers editing capabilities that allow you to scale and edit photos without the need of CSS.
- Users that hold an account are able to create, edit, view and delete their listings. Users can also were their transactions from purchases or from their own item being sold. Users that do not own the listing they are viewing, will not be authorised to edit or delete that listing, nor will the options be displayed to them.

---
### Sitemap

The below sitemap demonstrates the general flow of the application. The root page is the home page, which will be the first page upon loading into Happy Gardens. From the homepage, users can traverse to the view listings page and can then click on any listing to see further details. The user will also need to sign up or log in first to access the create listing tab.

![Sitemap](docs/sitemap.png)

---
### Tech stack

- Ruby on Rails
- HTML
- CSS
- Bootstrap
- Cloudinary - Image Upload
- Devise - Authentication
- Rolify - Authorization
- Pundit - Policies and User Roles
- Heroku - Website deployment
- SQLite - Database used for development
- PostgreSQL - Database used for production

---

## Screenshots





---
## User stories

- As a user I want to view listings without an account so I can browse the website first before signing up
- As a user I want to register/sign up to the application by entering my email, password and other details so I can create a plant sale listing or buy a plant
- As a user I want to log into the application using my email so I can view my account details to make sure it is correct
- As a user I want to be able to reset my password so I can still log in if my password is forgotten
- As a user I want to log into the application using my email so I can view my transaction history so I can view invoices
- As a user I want to log into the application using my email so I can edit my account to update any details
- As a user I want to log into the application using my email so I can delete my account so I can stop using the application 
- As a user I want to log into the application using my email to add a listing so I can sell my plants
- As a user I want to log into the application using my email to view the listings so I can buy plants
- As a user I want to log into the application using my email to edit my listings so I can update the plant details
- As a user I want to log into the application using my email to delete my listing so I can remove it from the website

---
## Wireframes

![Mobile View Wireframe](docs/mobile.png)

---

![Tablet View Wireframe](docs/tablet.png)

---

![Desktop View Wireframe](docs/desktop.png)

---
## Explain the different high-level components (abstractions) in your app

When a rails application is created the ApplicationController which inherits from the ActionController::Base are pre-generated. The ActionController contains methods used to handle the HTTP requests that are received by the webserver that have been sent from the client. It uses the request parameters to process the data and return a response back to the client, for example, HTML, JSON, XML, etc. Rails is designed to do a lot of the heavy lifting for you including causing all the controllers that are created, automatically inherit the ApplicationController, removing the need to configure the application manually. All models similarly inherit the pre-generated class called ApplicationRecord, which itself inherits the class ActiveRecord::Base. ActiveRecord acts as a high level abstraction by removing the manual, tedious database validations as well as many other in depth mechanisms that would take time to implement, removing the time that could be spent on coding.  

In this application the listings controller handles all the interactions and inputs to show and process the listing views (rendering HTML, create/read/update/delete listings) and updates the database using the listing model and the inherited application record. The listing model is responsible for storing the listings within the database. The user model is handled by the devise gem, generating the associated controller and views. The user model is responsible for storing user data in the database and also manages inheritance between other models, eg roles, listings etc. The user controller handles the user views, which allows a user to log in, sign up and change their details. The transaction model is responsible for managing and tracking transaction from users, the controller handles the transaction view, without the transaction model there wouldn't be a way to store the information about a transaction. Models are an important aspect to a rails application as without them the calls to the database and validation of the entities would need to be done manually. This increases the room for human error, repetitious code and SQL queries would need to be written by a developer as the model would usually handle this.  

---
## Third party services

- Cloudinary - Cloudinary is an image and video storing service that allows users to upload and store images in the cloud. Cloudinary allows you to edit/transform and personalise any image using their image management tools. Cloudinary can handle all of the resizing or cropping that needs to be done to an image, which helps reduce page load time​. Using Cloudinary also helps eliminate the resource intensive process of creating different variants of images for different browsers or devices, allowing you to create variants from the one image. Using Cloudinary allows users to upload images to the cloud of the plant they wish to sell and also allows other users to see the images on the listings page. 
- Heroku - Heroku is a cloud based platform used to deploy, manage and scale applications. Heroku allows developers to focus on coding without worrying about managing the infrastructure of their applications. Heroku is built on a managed container system and runs apps in smart containers. Heroku began only supporting the Ruby language, but now supports Java, Node.js, PHP, Python, Scala, Clojure and Go. The benefits of Heroku is that it works with businesses of all sizes while offering a feature rich free version.


## Project models in terms of the relationships (active record associations) they have with each other

Using active record associations allows you to streamline operations within your application. Without them the code becomes more complex, repetitious and certainly not DRY.
Active record associations, such as belongs_to or has_many, tells rails that there is a connection between two models.

In this application, the belong_to association is declared in the Listing model. Listing belongs_to the user because we need the one-to-one connection, so each listing can be assigned directly and only to one user. Having this association allows us to limit what a user can see or access. Without a certain listing belonging to a user, anyone would be able to make changes to it and potentially delete it or provide misinformation. Similarly, the Listing model also has_one_attached image, creating the one-to-one connection, so each listing can have one image associated with it.

The User model has_many listings and is a one-to-many connection, because users can have many listings, but the listing can only have one user. The has_many association is declared with the dependent option, destroy, which will remove any listings associated with that specific user, if the user has been deleted. Using the delete option in this situation not only prevents breaking referential integrity, but prevents someone from trying to purchase an item from a user that no longer exists and causing a bad user experience.

The Transaction model has a belongs_to association for the buyer and seller, creating the one-to-one connection. Using buyer and seller in the transaction model allows the differentiation of users that can be a both buyer and seller. The transaction model also belongs_to a listing. The belongs_to that are declared in the transaction model is necessary because one transaction can only belong to one user or one seller, and one transaction has to belong to only one listing.

The Role model was pre-generated with the Pundit gem and therefore generated the associations. The model has a has_and_belongs_to_many users association, because the roles created will belong to a user, but a user can also have many roles associated to them. 

---
## Database relations implemented in the application

A user of Happy Gardens has a one-to-many listing relation, as a user can have multiple listings, but only one listing can belong to a user. In the listings table, a seller_id was included as a foreign key to identify the relationship between the users table and listings table. The listing also has a one-to-one relation with images, because in the listing model there is a has_one_attached image association. The transaction model has a one-to-one connection with the user, so the transaction belongs to one user.

In the ERD below you can see that the users table contains an auto incrementing, unique id set as the primary key, which helps to distinguish the users apart. Each listing also has a unique id set as the primary key, but also contains a seller_id listed as the foreign key, which connects to the specific users id, this ensures that we'll always know what listing belongs to who and makes authorisation possible. The transaction table contains both a buyer and seller id as foreign keys, as well as a listing id which connects to a specific listing and user. This allows us to determine who purchased what and who the original listing belonged to. 

![ERD](/docs/erd.png)

---
## Describe the way tasks are allocated and tracked in your project

The project was tracked using the list making application, trello (link can be found [here](https://trello.com/b/Wjpd4G0L/two-way-marketplace)). The tasks were broken down into categories to better help identify what was currently being worked on and what took priority over other tasks. I had three main sections that indicated what needed to be done, what was currently being done and what I had finished. Some of the larger tasks were split up into checklists to help break down what was required in implementing a task. For example, the different gems to implement was broken up into checklists so I could keep track of what I had installed and when it was working it was able to be checked off. I used checklists as well as a [whiteboard](#whiteboard-planning) to keep track of the tasks available for my view sections. There were many different views that displayed content and using the whiteboard let me constantly update it with ideas or drawings of how I wanted to display certain items. Using trello my tasks were also organised in a way to help structure the overall application. The usual flow begins with the routes, then onto the controllers and lastly the view. I ordered the tasks that needed to be done in a way that followed this pattern, to ensure I was implementing the correct actions at the correct time.  

---
### Trello Planning
![trello 1](/docs/trello1.png)
---
![trello 2](/docs/trello2.png)
---
![trello 3](/docs/trello3.png)
---
![trello 4](/docs/trello4.png)
---
![trello 5](/docs/trello5.png)

### Whiteboard planning 
![whiteboard](/docs/planning.jpg)






