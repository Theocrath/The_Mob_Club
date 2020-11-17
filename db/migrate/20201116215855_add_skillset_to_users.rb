class AddSkillsetToUsers < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :skillset, foreign_key: true
  end
end
