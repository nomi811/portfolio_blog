FactoryGirl.define do
  factory :post do
    title 'New Post'
    image Rack::Test::UploadedFile.new(Rails.root + 'spec/files/images/heron-600px.jpg', 'image/jpg')
  end
end
