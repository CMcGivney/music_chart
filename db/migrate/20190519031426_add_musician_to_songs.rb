class AddMusicianToSongs < ActiveRecord::Migration[5.2]
  def change
    add_column :songs, :musician, :string
  end
end
