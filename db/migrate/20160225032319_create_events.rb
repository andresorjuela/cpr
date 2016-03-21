class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.text :lecture
      t.text :meal
      t.text :dessert
      t.date :date

      t.timestamps null: false
    end
  end
end
