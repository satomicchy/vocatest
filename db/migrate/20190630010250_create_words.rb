class CreateWords < ActiveRecord::Migration[6.0]
  def change
    create_table :words do |t|
      t.string :character
      t.text :meaning
      t.references :book, null: false, foreign_key: true

      t.timestamps
    end
  end
end
