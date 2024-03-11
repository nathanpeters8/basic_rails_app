class CreateAuthors < ActiveRecord::Migration[7.1]
  def change
    create_table :authors do |t|
      #define attributes
      t.string :name
      t.string :location
      t.string :birth_year

      t.timestamps
    end
  end
end
