class AddTestimonyToEvents < ActiveRecord::Migration
  def change
    add_column :events, :testimony, :string
  end
end
