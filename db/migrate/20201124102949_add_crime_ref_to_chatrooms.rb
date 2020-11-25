class AddCrimeRefToChatrooms < ActiveRecord::Migration[6.0]
  def change
    add_reference :chatrooms, :crime, null: false, foreign_key: true
  end
end
