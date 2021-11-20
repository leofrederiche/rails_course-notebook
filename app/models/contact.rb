class Contact < ApplicationRecord
  belongs_to :kind, optional: true # Optional is required in Rails 6 to optional relation  
  has_one :address

  accepts_nested_attributes_for :address, allow_destroy: true, update_only: true, 
end
