# Q0: Why are these two errors being thrown?
The first error was an error pointing to the database not existing, which was solved through running rails db:migrate. The next error was due to the Pokemon Controller not existing.
# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
The method chooses a random Pokemon from the list of trainer-less Pokemon. This pokemon is that displayed through the index file.
# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
This creates a button that has the label "Throw a Pokeball", which when clicked passes that pokemon's id and makes a patch request to the capture_path.

# Question 3: What would you name your own Pokemon?
JigglySwiggly

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
The redirect_to will go the the trainers_path, which will require the trainer's id and go to that specific trainer's page.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
flash[:error] will cause a flash alert to the user when it gets rendered after the redirect.

# Give us feedback on the project and decal below!



# Extra credit: Link your Heroku deployed app
