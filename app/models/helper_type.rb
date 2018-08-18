class HelperType < ApplicationRecord

  has_many :helpers, dependent: :destroy

  validates_presence_of :name
end
