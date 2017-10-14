<h1>Odin Kittens</h1>

This project features an HTML rendering and JSON rendering application. The main focus is the second part (JSON), where the application will be acting as an API.

- The full project details can be found here:

https://www.theodinproject.com/courses/ruby-on-rails/lessons/apis

<h2>HTML</h2>

**Features**

- **Kitten model with attributes of :name, :age, :cuteness, and :softness.**

- **KittensController and :kittens routes for all 7 RESTful actions**

- **Default route: KittensController#index**

- **Each controller action and its corresponding view displays a very basic HTML page** 

	- #index lists all Kittens

	- #show displays a single Kitten

	- #new renders a simple Kitten creation form

	- #edit uses the same form (which should be a partial used by both the New and Edit views) to Edit the Kitten

	- #create and #update do their jobs

- **Delete link on the Kitten's Show and Edit pages, as well as next to each Kitten listed in the Index page**

- **A simple display of the flash hash which congratulates the user on adding, editing, or deleting kittens**

<h2>JSON API</h2>

- **KittenController's #index method modified to #respond_to JSON and render the proper variables**

- **KittenController's #show method modified to #respond_to JSON and render the proper variables, which will require the user to provide an ID when making a request**
