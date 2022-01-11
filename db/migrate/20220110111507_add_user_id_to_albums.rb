class AddUserIdToAlbums < ActiveRecord::Migration[6.1]
  def change
    add_column :albums, :user_id, :bigint  # user id maintion the 
  end
end
