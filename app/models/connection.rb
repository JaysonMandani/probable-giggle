class Connection < ActiveRecord::Base
  belongs_to :company
  belongs_to :contact
  accepts_nested_attributes_for :contact
end
