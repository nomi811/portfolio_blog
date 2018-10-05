FactoryBot.define do
  factory :pattern do
    name 'New Pattern'
    image Rack::Test::UploadedFile.new(Rails.root + 'spec/files/images/Free-Flowing-600px.jpg', 'image/jpg')
  end
end
