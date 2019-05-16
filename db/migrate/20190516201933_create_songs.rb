class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |t|
      t.string :title
      t.string :genre
      t.string :released
      t.string :featuring

      t.timestamps
    end
  end
end
