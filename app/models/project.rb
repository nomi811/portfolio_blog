class Project < ActiveRecord::Base # :nodoc:
  extend FriendlyId
  friendly_id :title, use: :slugged
end
