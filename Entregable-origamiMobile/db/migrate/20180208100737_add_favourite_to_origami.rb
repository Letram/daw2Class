class AddFavouriteToOrigami < ActiveRecord::Migration[5.1]
  def change
    add_column :origamis, :favourite, :boolean, default: false
  end
end
