class CreatePeopleStarshipsJoinTable < ActiveRecord::Migration[6.1]
  def change
    create_table :people_starships do |t|
      t.references :people, null: false, foreign_key: true
      t.references :starships, null: false, foreign_key: true
      t.timestamps
    end
  end
end
