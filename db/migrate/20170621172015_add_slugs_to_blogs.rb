class AddSlugsToBlogs < ActiveRecord::Migration[5.1]
  def change
    add_column :blogs, :slug, :string
    add_index :blogs, :slug, unique: true
  end
end