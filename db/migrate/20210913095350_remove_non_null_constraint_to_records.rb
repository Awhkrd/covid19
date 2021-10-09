class RemoveNonNullConstraintToRecords < ActiveRecord::Migration[6.1]
  def change
    change_column_null :records, :confirmed, true
    change_column_null :records, :death, true
    change_column_null :records, :recovered, true
    change_column_null :records, :active, true
    change_column_null :regions, :region_code, true
    change_column_null :regions, :name, true
    change_column_null :regions, :latitude, true
    change_column_null :regions, :longitude, true
    change_column_null :regions, :longitude, true
    change_column_null :countries, :country_code, true
  end
end
