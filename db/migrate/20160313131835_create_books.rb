class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :book_id
      t.text :description
      t.string :published

      t.timestamps null: false
    end
  end
end
