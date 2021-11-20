class Contact < ApplicationRecord
  belongs_to :kind, optional: true # Optional is required in Rails 6 to optional relation  
  has_one :address, dependent: :destroy
  has_one :phone, dependent: :destroy

  accepts_nested_attributes_for :address, update_only: true
end
