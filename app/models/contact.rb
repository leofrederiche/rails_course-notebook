class Contact < ApplicationRecord
  belongs_to :kind, optional: true # Optional is required in Rails 6 to optional relation
  has_one :address, :dependent => :destroy # Require dependent: :destroy to UPDATE address from @contact.update

  accepts_nested_attributes_for :address
end
