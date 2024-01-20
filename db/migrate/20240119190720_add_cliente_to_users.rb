class AddClienteToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :cliente, :boolean, default: false
  end
end
