class AddFavoriteFoodToArtists < ActiveRecord::Migration[5.2]
  def change
    add_column :artists, :favorite_food, :string
    #table, column, type
  end
end

#new migration for when we want to update title. the migration for the 001 is already ran so we create a new file so we can have a clear and cocise trail of changes 