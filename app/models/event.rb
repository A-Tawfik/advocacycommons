class Event < ApplicationRecord
  
  has_many :ticket_levels

  belongs_to :location, :class_name => "Address", :foreign_key => 'address_id'
  belongs_to :creator, :class_name => "Person"
  belongs_to :organizer, :class_name => "Person"
  belongs_to :modified_by, :class_name => "Person"
  has_many :attendances
  has_many :reminders
end
