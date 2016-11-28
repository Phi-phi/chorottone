class CreateMedias < ActiveRecord::Migration[5.0]
  def change
    create_table :medias do |t|
      t.string :author, null: false
      t.string :image, null: false
      t.string :audio, null: false

      t.timestamps
    end
  end
end
