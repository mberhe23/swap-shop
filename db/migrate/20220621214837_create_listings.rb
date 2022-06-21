class CreateListings < ActiveRecord::Migration[6.1]
  def change
    create_table :listings do |t|
      t.string :title
      t.string :description
      t.string :photo
      t.string :category
      t.string :condition
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
