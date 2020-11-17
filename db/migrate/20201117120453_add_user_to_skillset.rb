class AddUserToSkillset < ActiveRecord::Migration[6.0]
  def change
    add_reference :skillsets, :user, foreign_key: true
  end
end
