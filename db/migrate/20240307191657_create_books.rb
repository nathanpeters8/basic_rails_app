class CreateBooks < ActiveRecord::Migration[7.1]
  def change
    # create_table method is where configure the table
    create_table :books do |t|
      # define attributes for table
      # t.<data_type> :<attr_name>
      t.string :name 
      t.string :publishing_year
      t.integer :num_of_pages
      
      t.timestamps
    end
  end
end
