# Create a new project, using rails new user_login_project
# Done

# Create a new model called 'User' with the information above.
#
# How do I create a new model?
# rails generate model User
#
# How do I create a new model and with fields?
# rails generate model User first_name:string last_name:string email_address:string age:integer
# NOTE: rails will automatically generate your created_at and updated_at fields
#
# Running via Spring preloader in process 23171
#       invoke  active_record
#       create    db/migrate/20161007160811_create_users.rb
#       create    app/models/user.rb
#       invoke    test_unit
#       create      test/models/user_test.rb
#       create      test/fixtures/users.yml
#
# After I generated my model I will need to make migrations with rake.
#
# rake db:migrate
#
# == 20161007160811 CreateUsers: migrating ======================================
# -- create_table(:users)
#    -> 0.0018s
# == 20161007160811 CreateUsers: migrated (0.0019s) =============================
#
# Create a few new records in the users table using the Rails console.
#
# User.create(first_name:"Tupac", last_name:"Shakur", email_address:"tupac@shakur.com", age:40)
# User.create(first_name:"Bill", last_name:"Clinton", email_address:"bill@clinton.com", age:35)
# User.create(first_name:"Brian", last_name:"Cushman", email_address:"brian@cushman.com", age:34)
#
# Get familiar with .save, .valid?, .new_record?
#
# user1 = User.new(first_name:"Hillary", last_name:"Clinton", email_address:"hillary@hacked.com", age:66)
# user1.save
# user1 = User.new(first_name:"50", last_name:"Cent", email_address:"9@shots.com", age:40)
# user1.save
#
# Try to create a record that fails validations and use .valid? to confirm.
# Returns a boolean valid if the validations pass, then it commits, otherwise
# it will rollback the transaction.
#
# User.create(last_name:"Cushman", email_address:"brian@cushman.com", age:33).valid?
 #   (0.3ms)  begin transaction
 #   (0.2ms)  rollback transaction
 # => false
 #
# User.create(first_name:"Brian", email_address:"brian@cushman.com").valid?
#    (0.2ms)  begin transaction
#    (0.2ms)  rollback transaction
#  => false
#
# User.create(first_name:"Brian", last_name:"Cushman", email_address:"brian@cushman.com", age:34).valid?
#    (0.1ms)  begin transaction
#   SQL (1.4ms)  INSERT INTO "users" ("first_name", "last_name", "email_address", "age", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?)  [["first_name", "Brian"], ["last_name", "Cushman"], ["email_address", "brian@cushman.com"], ["age", 34], ["created_at", "2016-10-07 17:06:29.986752"], ["updated_at", "2016-10-07 17:06:29.986752"]]
#    (1.1ms)  commit transaction
#  => true
#
# Using .valid? we see that the top two transactions do not commit due to
# validation failures, but the last one does pass validations, and thus
# commits to the database and returns true.
#
# user1 = User.new(first_name:"Beebop", last_name:"Rocksteady", email_address:"beebop@rocksteady.com", age:15)
#
# user1.new_record?
#  => true
#
# user1.save
#
 #   (1.1ms)  commit transaction
 # => true
#
# user1.new_record?
#  => false
#
# Make sure prior to validations, you know how to add a new record even if some of the fields are empty.
#
# User.create(first_name:"DJ")
#
# User.create(first_name:"DJ")
# (0.5ms)  begin transaction
#   SQL (0.5ms)  INSERT INTO "users" ("first_name", "created_at", "updated_at") VALUES (?, ?, ?)  [["first_name", "DJ"], ["created_at", "2016-10-07 17:27:29.142404"], ["updated_at", "2016-10-07 17:27:29.142404"]]
#    (3.4ms)  commit transaction
#
# Now add validations to the model so that...
# it requires the presence of the all four fields.
# it requires the age to be numeric.
# it requires the first_name and the last_name to be at least 2 characters each.
# it requires the age to be at least 10 and below 150 (look into http://apidock.com/rails/ActiveModel/Validations/HelperMethods/validates_numericality_of for some help).
# use .errors and .errors.full_messages so that you can see/display the error messages when the validations are failing
#
# validates :first_name, :last_name, :email_address, :age, presence: true
#
# validates :age, numericality: true
#
# validates :first_name, :last_name, length: { in: 2..20 }
#
#
# user1 = User.new(first_name:"Ronald", last_name:"McDonald", email_address:"ronald@mcdonald.com", age:400)
#
# user1.save
#    (0.1ms)  begin transaction
#    (0.1ms)  rollback transaction
#  => false
#
# user1.errors
# => #<ActiveModel::Errors:0x007fbfaa8a8628 @base=#<User id: nil, first_name: "Ronald", last_name: "McDonald", email_address: "ronald@mcdonald.com", age: 400, created_at: nil, updated_at: nil>, @messages={:age=>["must be less than 150"]}>
#
# user1.errors.full_messages
#
# user1.errors.full_messages
# => ["Age must be less than 150"]
#
# Know how to retrieve all users.
# User.all
#
# Know how to get the first user.
# User.first
#
# Know how to get the last user.
# User.last
#
# Know how to get the users sorted by their first name (order by first_name DESC).
#
# User.order(first_name: :desc)
#
# User.find(3).update(first_name: "Goober")
#
# User.find(3).destroy
