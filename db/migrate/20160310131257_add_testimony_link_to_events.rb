class AddTestimonyLinkToEvents < ActiveRecord::Migration
  def change
    add_column :events, :testimony_link, :string
  end
end
