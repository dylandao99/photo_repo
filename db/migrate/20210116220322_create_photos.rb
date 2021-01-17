class CreatePhotos < ActiveRecord::Migration[6.1]
  def change
    create_table :photos do |t|
      t.text :name
      t.text :description
      t.boolean :is_public
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
