class Company < ActiveRecord::Base
  has_many :connections
  has_many :contacts, through: :connections
  accepts_nested_attributes_for :connections
end
