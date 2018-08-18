class Helper < ApplicationRecord
  belongs_to :helper_type

  validates_presence_of :name, :email, :phone_number, :password, :device_id

end
