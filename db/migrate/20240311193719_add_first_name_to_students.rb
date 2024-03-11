class AddFirstNameToStudents < ActiveRecord::Migration[7.1]
  def change
    # add first_name column with string data type to books table
    add_column :books, :first_name, :string 

    #index first_name attribute
    add_index :books, :first_name
  end
end
