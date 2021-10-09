class Region < ApplicationRecord
  belongs_to :country
  has_many :records, dependent: :destroy, autosave: true
end
