class Country < ApplicationRecord
  has_many :regions, dependent: :destroy, autosave: true

end
