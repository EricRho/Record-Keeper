class AddImageToRecord < ActiveRecord::Migration
  def change
    add_column :records, :album_art_url, :string
  end
end
