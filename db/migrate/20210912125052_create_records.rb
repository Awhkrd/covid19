class CreateRecords < ActiveRecord::Migration[6.1]
  def change
    create_table :records do |t|
      t.references :region, null: false, foreign_key: true
      t.integer :confirmed, default: 0, null: false
      t.integer :death, default: 0, null: false
      t.integer :recovered, default: 0, null: false
      t.integer :active, default: 0, null: false
      t.timestamps
    end
  end
end
