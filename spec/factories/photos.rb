# frozen_string_literal: true

FactoryBot.define do
  factory :photo do
    name { 'New Photo' }
    image { Rack::Test::UploadedFile.new(Rails.root + 'spec/files/images/heron-600px.jpg', 'image/jpg') }
  end
end
