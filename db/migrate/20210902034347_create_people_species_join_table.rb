class CreatePeopleSpeciesJoinTable < ActiveRecord::Migration[6.1]
  def change
    create_table :people_species do |t|
      t.references :people, null: false, foreign_key: true
      t.references :specie, null: false, foreign_key: true
      t.timestamps
    end
  end
end
