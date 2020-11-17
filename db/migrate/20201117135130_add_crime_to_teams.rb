class AddCrimeToTeams < ActiveRecord::Migration[6.0]
  def change
    add_reference :teams, :crime, null: false, foreign_key: true
  end
end
