class CreateCountries < ActiveRecord::Migration[6.1]
  def change
    create_table :countries do |t|
      t.string :country_code, null: false
      t.string :name
      t.integer :num_of_states
      t.timestamps
    end
  end
end
