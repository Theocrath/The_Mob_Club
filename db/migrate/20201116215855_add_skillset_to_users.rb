class AddSkillsetToUsers < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :skillset, null: false, foreign_key: true
  end
end
