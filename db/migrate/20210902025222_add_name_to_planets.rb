class AddNameToPlanets < ActiveRecord::Migration[6.1]
  def change
    add_column :planets , :name , :string
  end
end
