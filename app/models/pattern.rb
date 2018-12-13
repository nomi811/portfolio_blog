# frozen_string_literal: true

class Pattern < ActiveRecord::Base # :nodoc:
  extend FriendlyId
  friendly_id :name, use: :slugged


  validates_presence_of :name
end
