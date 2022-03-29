# location: spec/unit/unit_spec.rb
require 'rails_helper' 

#testing user
RSpec.describe User, type: :model do
  subject do #what is the subject 
    described_class.new(name: 'Khai Nguyen', DOB: '2000-09-06', year: 2020, email: "khaihuyennguyen@tamu.edu", major: "Computer Science", active_points: 0, gpa: 4.0, total_hours: 30)
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
    subject.active_points = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without a name' do
    subject.gpa = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without a name' do
    subject.total_hours = nil
    expect(subject).not_to be_valid
  end
end

#________________________________
# testing attendance_log
RSpec.describe AttendanceLog, type: :model do
  subject do
    described_class.new(user_id: 1, event_id: 2)
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is invalid with an invalid user_id' do
    subject.user_id = -9
    expect(subject).not_to be_valid
  end

  it 'is invalid with an invalid event_id' do
    subject.event_id = -1
    subject.user_id = 2
    expect(subject).not_to be_valid
  end
end

#________________________________
# unit testing sponsor
RSpec.describe Sponsor, type: :model do
  subject do
    described_class.new(event_id: 1, sponsor_name: "Starbright Inc.", sponsor_type: "silver")
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is invalid with an invalid sponsor_type' do
    subject.sponsor_type =" sponsor type"
    expect(subject).not_to be_valid
  end

  it 'is invalid with an invalid sponsor_name' do
    subject.sponsor_name =""
    subject.sponsor_type ="gold"
    expect(subject).not_to be_valid
  end

  it 'is invalid with an invalid event_id' do
    subject.event_id = nil
    subject.sponsor_name ="Starbright Inc."
    subject.sponsor_type ="gold"
    expect(subject).not_to be_valid
  end
end

#________________________________
# unit testing application
RSpec.describe Application, type: :model do
  subject do
    described_class.new(name: "Diamond Azailia", email: "regenR8@tamu.edu", status: "pending")
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is invalid with an invalid name' do
    subject.name = ""
    expect(subject).not_to be_valid
  end

  it 'is invalid with an invalid email' do
    subject.name = "Diamond Azailia"
    subject.email ="hahah@live.com"
    expect(subject).not_to be_valid
  end

  it 'is invalid with an invalid status' do
    subject.email = "regenR8@tamu.edu"
    subject.status ="waiting"
    expect(subject).not_to be_valid
  end
end
#________________________________
# testing hours_request

#________________________________
# unit testing events
