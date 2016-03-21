class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.text :instruction
      t.string :course
      t.references :event, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
