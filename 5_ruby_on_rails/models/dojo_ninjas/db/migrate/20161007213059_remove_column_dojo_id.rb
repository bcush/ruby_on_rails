class RemoveColumnDojoId < ActiveRecord::Migration
  def change
    remove_column :ninjas, :dojo_id
  end
end
