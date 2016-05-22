class AddTitleOneToPrograms < ActiveRecord::Migration
  def change
    add_column :programs, :title_one, :string
  end
end
