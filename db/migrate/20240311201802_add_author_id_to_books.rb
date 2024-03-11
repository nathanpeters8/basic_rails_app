class AddAuthorIdToBooks < ActiveRecord::Migration[7.1]
  def change
    # add author id into books table
    add_column :books, :author_id, :integer 
  end
end
