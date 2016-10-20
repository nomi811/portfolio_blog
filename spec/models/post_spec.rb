describe Post do
  it 'is not valid without a title' do
    post = Post.new(title: nil)
    expect(Post.new).not_to be_valid
  end

  # it 'is not valid without a description' do
  #   expect(Post.new).to be_valid
  # end
end
