# location: spec/unit/unit_spec.rb
require 'rails_helper' 

#testing username

RSpec.describe User, type: :model do
  subject do #what is the subject 
    described_class.new(name: 'Khai Nguyen', DOB: '2000-09-06', year: 2020, email: "khaihuyennguyen@tamu.edu", major: "Computer Science", service_points: 0, brother_points: 0, social_points: 0, gpa: 4.0, study_hours: 30)
  end
 
  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.name = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without a name' do
    subject.DOB = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without a name' do
    subject.year = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without a name' do
    subject.major = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without a name' do
    subject.email = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without a name' do
    subject.service_points = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without a name' do
    subject.brother_points = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without a name' do
    subject.social_points = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without a name' do
    subject.gpa = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without a name' do
    subject.study_hours = nil
    expect(subject).not_to be_valid
  end

end
