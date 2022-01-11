class AddConfirmableToDeviseV1 < ActiveRecord::Migration[6.1]
  def add

    change_table(:users) do |t| 
      t.confirmable 
    end
    add_index  :users, :confirmation_token, :unique => true 
  end
end
