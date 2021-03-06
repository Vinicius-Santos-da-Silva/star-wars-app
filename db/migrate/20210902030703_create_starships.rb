class CreateStarships < ActiveRecord::Migration[6.1]
  def change
    create_table :starships do |t|
      t.string :name
      t.string :model
      t.string :starship_class
      t.string :manufacturer
      t.string :cost_in_credits
      t.string :length
      t.string :crew
      t.string :passengers
      t.string :max_atmosphering_speed
      t.string :hyperdrive_ratin
      t.string :g
      t.string :MGLT
      t.string :cargo_capacity
      t.string :consumables
      t.string :url

      t.timestamps
    end
  end
end
