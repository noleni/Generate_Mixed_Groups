class CreateCaracters < ActiveRecord::Migration[7.0]
  def change
    create_table :caracters do |t|
      t.string :name
      t.string :movie

      t.timestamps
    end
  end
end
