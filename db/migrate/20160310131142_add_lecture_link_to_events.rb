class AddLectureLinkToEvents < ActiveRecord::Migration
  def change
    add_column :events, :lecture_link, :string
  end
end
