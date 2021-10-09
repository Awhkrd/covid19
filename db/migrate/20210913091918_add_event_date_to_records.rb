class AddEventDateToRecords < ActiveRecord::Migration[6.1]
  def change
    add_column :records, :event_date, :date
  end
end
