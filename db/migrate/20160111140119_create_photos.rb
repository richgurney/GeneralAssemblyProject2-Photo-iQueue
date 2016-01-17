class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :name
      t.string :desc
      t.string :location
      t.text :tech
      t.boolean :public
      t.integer :album_id
   
      t.timestamps null: false
    end
  end
end
