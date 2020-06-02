class CreateFlights < ActiveRecord::Migration[6.0]
  def change
    create_table :flights do |t|
      t.integer :owner_id
      t.string :description
      t.datetime :time
      t.boolean :reminder

      t.timestamps
    end
  end
end
