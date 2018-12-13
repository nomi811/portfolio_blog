# frozen_string_literal: true

class Photo < ActiveRecord::Base # :nodoc:
  extend FriendlyId
  friendly_id :name, use: :slugged


  validates_presence_of :name
end
