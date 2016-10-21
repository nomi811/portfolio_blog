describe Post do
  subject { described_class.new }

  it 'is valid with valid attributes' do
    subject.title = 'New Post'
    subject.content = 'Some content'
    expect(subject).to be_valid
  end
  it 'is not valid without a title' do
    expect(subject).not_to be_valid
  end

  it 'is not valid without a description' do
    subject.title = 'New Post'
    expect(subject).not_to be_valid
  end
end
