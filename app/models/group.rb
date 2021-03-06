class Group < ApplicationRecord
  has_many :memberships
  has_many :members, :through => :memberships, :source => :person

  has_and_belongs_to_many :events
  has_and_belongs_to_many :advocacy_campaigns
  has_and_belongs_to_many :canvassing_efforts
  has_and_belongs_to_many :petitions
  has_and_belongs_to_many :share_pages
  has_and_belongs_to_many :forms
  belongs_to :creator, :class_name => "Person"
  belongs_to :modified_by, :class_name => "Person"

  def before_create
    self.modified_by = self.creator
  end
end
