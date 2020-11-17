class CreateSkillsets < ActiveRecord::Migration[6.0]
  def change
    create_table :skillsets do |t|
      t.integer :close_combat
      t.integer :long_range_weapons
      t.integer :mid_range_weapons
      t.integer :explosives
      t.integer :infiltration
      t.integer :hacking
      t.integer :lockpicking
      t.integer :seduction

      t.timestamps
    end
  end
end
