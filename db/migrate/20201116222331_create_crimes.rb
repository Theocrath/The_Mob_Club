class CreateCrimes < ActiveRecord::Migration[6.0]
  def change
    create_table :crimes do |t|
      t.string :title
      t.text :description
      t.date :date
      t.string :location
      t.integer :reward
      t.references :skillset, null: false, foreign_key: true
      t.references :boss, null: false, foreign_key: { to_table: 'users' }
      t.references :right_hand, null: false, foreign_key: { to_table: 'users' }

      t.timestamps
    end
  end
end
