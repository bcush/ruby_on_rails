class AddCommentIdToProducts < ActiveRecord::Migration
  def change
    add_reference(:products, :comment)
  end
end
