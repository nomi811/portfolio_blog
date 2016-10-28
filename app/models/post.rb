class Post < ActiveRecord::Base # :nodoc:
  require 'aws-sdk-v1'
  require 'aws-sdk'
  
  extend FriendlyId
  friendly_id :title, use: :slugged

  has_attached_file :image, styles: { large: '600x600>',
                                      medium: '300x300>',
                                      thumb: '150x150>',
                                      square: '200x200#' },
                            default_url: '/images/:style/missing.png'
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  validates_presence_of :title, :content
end
