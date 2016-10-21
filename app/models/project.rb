class Project < ActiveRecord::Base # :nodoc:
  extend FriendlyId
  friendly_id :title, use: :slugged
  validates_presence_of :title, :description
end
