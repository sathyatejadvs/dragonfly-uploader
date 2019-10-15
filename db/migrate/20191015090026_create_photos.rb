class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
    	t.string :avatar_uid
    	t.string :title
      t.timestamps null: false
    end
  end
end
