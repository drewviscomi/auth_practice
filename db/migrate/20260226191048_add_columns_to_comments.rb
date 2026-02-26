class AddColumnsToComments < ActiveRecord::Migration[8.1]
  def change
    add_column :comments, :body, :string
    add_column :comments, :post_id, :integer
    add_column :comments, :user_id, :integer
  end
end
