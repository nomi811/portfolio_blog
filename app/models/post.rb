# frozen_string_literal: true

class Post < ActiveRecord::Base # :nodoc:
  extend FriendlyId
  friendly_id :title, use: :slugged

  

  validates_presence_of :title, :content
end
