class AddSuscriptionToUsers < ActiveRecord::Migration
  def change
    add_column :users, :suscription, :boolean
  end
end
