class Contact < ApplicationRecord
  belongs_to :kind, optional: true # Optional is required in Rails 6 to optional relation  
  has_one :address, dependent: :destroy
  has_many :phones, dependent: :destroy

  accepts_nested_attributes_for :address, update_only: true
  accepts_nested_attributes_for :phones, update_only: true, reject_if: :all_blank
end
