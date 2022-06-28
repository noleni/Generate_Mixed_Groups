class AddStatusToCaracter < ActiveRecord::Migration[7.0]
  def change
    add_column :caracters, :status, :boolean
  end
end
