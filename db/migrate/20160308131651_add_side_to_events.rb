class AddSideToEvents < ActiveRecord::Migration
  def change
    add_column :events, :side, :text
  end
end
