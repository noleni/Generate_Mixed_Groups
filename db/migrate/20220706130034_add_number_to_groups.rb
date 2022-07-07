class AddNumberToGroups < ActiveRecord::Migration[7.0]
  def change
    add_column :groups, :number, :integer
  end
end
