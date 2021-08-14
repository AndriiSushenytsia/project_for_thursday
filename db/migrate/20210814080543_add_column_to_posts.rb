class AddColumnToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :title, :string
    add_column :posts, :description, :string
  end
end
