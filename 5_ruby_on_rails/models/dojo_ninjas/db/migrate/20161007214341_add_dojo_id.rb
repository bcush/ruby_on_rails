class AddDojoId < ActiveRecord::Migration
  def change
    add_column :ninjas, :dojo_id, :integer
  end
end
