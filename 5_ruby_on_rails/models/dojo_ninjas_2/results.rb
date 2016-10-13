Start a new project (the name of the project should be 'dojo_ninjas')
> rails new dojo_ninjas

Create appropriate tables/models using "rails generate model", "rake db:create" and "rake db:migrate".
> rails generate model Ninja
> rails generate model Dojo
> rake db:create
> rake db:migrate

Using Ruby console:
Create 3 dojos (insert some blank entries just to make sure it's allowing you to insert empty entries)
> Dojo.create
> Dojo.create
> Dojo.create
> Dojo.all

Change your models so that it does the following validations:
For the dojo, require the presence of the name, city, and state; also require the state to be two characters long
>  validates :name, :city, :state, presence: true
>  validates :state, length: { is: 2 }, allow_blank: false

For the ninja, require the presence of the first name and last name
>  validates :first_name, :last_name, presence: true

Make sure that your ninja model belongs to the dojo (specify this in the model for both the dojo and the ninja)
>  belongs_to :dojo
>  has_many :ninjas

Using ruby console
Delete the three dojos you created (e.g. Dojo.find(1).destroy; also look up destroy_all method)
> Dojo.first.destroy
> Dojo.destroy_all
> Dojo.all

Create 3 additional dojos by using Dojo.new().
> Dojo.create(name:"CodingDojo Silicon Valley", city:"Mountain View", state:"CA")
> Dojo.create(name:"CodingDojo Seattle", city:"Seattle", state:"WA")
> Dojo.create(name:"CodingDojo New York", city:"New York", state:"NY")

Try to create a few more dojos but without specifying some of the required fields. Make sure that the validation works and generates the errors.
> Dojo.create(name:"Dallas Dojo", city:"Dallas") <- fails

Create 3 ninjas that belong to the first dojo you created.
> Ninja.create(first_name:"Brian", last_name:"Cushman", dojo: Dojo.first)
> Ninja.create(first_name:"Sal", last_name:"Perez", dojo: Dojo.first)
> Ninja.create(first_name:"Joey", last_name:"So", dojo: Dojo.first)

Create 3 more ninjas and have them belong to the second dojo you created.
> Ninja.create(first_name:"Brian", last_name:"Bange", dojo: Dojo.second)
> Ninja.create(first_name:"Eric", last_name:"Clark", dojo: Dojo.second)
> Ninja.create(first_name:"Ryan", last_name:"Kinmartin", dojo: Dojo.second)

Create 3 more ninjas and have them belong to the third dojo you created.
> Ninja.create(first_name:"David", last_name:"Galvan", dojo: Dojo.third)
> Ninja.create(first_name:"Danny", last_name:"Anz", dojo: Dojo.third)
> Ninja.create(first_name:"Allison", last_name:"Pham", dojo: Dojo.third)

Make sure you understand how to get all of the ninjas for any dojo
(e.g. get all the ninjas for the first dojo, second dojo, etc).
> Ninja.where(dojo: Dojo.first)
> Ninja.where(dojo: Dojo.second)
> Ninja.where(dojo: Dojo.third)

How would you only retrieve the first_names of the ninjas that belong to the
second dojo and order the result by created_at DESC order?
> Ninja.select("first_name").where(dojo: Dojo.second).order(created_at: :desc)

Delete the second dojo. How could you adjust your model so that it
automatically removes all of the ninjas associated with that dojo?
> Dojo.find(Dojo.second).destroy
> Set dependent: :destroy in your Dojo model

