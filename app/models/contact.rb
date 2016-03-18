class Contact < ActiveRecord::Base
  has_many :connections
  has_many :company, through: :connections
  accepts_nested_attributes_for :connections
end
