class CreateNinjas < ActiveRecord::Migration
  def change
    create_table :ninjas do |t|
      t.references :dojo, index: true
      t.string :first_name
      t.string :last_name

      t.timestamps null: false
    end
    add_foreign_key :ninjas, :dojos
  end
end
