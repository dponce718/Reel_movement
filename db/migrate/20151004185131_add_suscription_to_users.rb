class AddSuscriptionToUsers < ActiveRecord::Migration
  def change
    add_column :users, :suscription, :string
  end
end
