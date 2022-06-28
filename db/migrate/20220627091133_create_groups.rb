class CreateGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :groups do |t|
      t.text :members, array: true, default: []

      t.timestamps
    end
  end
end
