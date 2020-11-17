class AddCrimeToSkillset < ActiveRecord::Migration[6.0]
  def change
    add_reference :skillsets, :crime, foreign_key: true
  end
end
