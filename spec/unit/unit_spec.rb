# location: spec/unit/unit_spec.rb
require 'rails_helper' 

#testing username

RSpec.describe User, type: :model do
  subject do #what is the subject 
    described_class.new(name: 'Khai Nguyen')
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.name = nil
    expect(subject).not_to be_valid
  end
end