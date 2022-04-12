# frozen_string_literal: true
# location: spec/unit/unit_spec.rb
require 'rails_helper'

# testing user, not testing digests or image_url
RSpec.describe User, type: :model do
  subject do # what is the subject
    described_class.new(name: 'Khai Nguyen', year: 2020, major: 'Computer Science', position: "President", email: 'khaihuyennguyen@tamu.edu',
                         service_points: 0, brother_points: 0, social_points: 0, study_hours: 0, is_officer: true, is_admin: false, password: "uhmsies")
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.name = nil
    expect(subject).not_to be_valid
    subject.name = 'Khai Ngyuen'
    expect(subject).to be_valid
  end

  it 'is not valid with a name of over 50 characters' do
    subject.name = "123456789101112131415161718192021222324252627282930"
    expect(subject).not_to be_valid
    subject.name = 'Khai Ngyuen'
    expect(subject).to be_valid
  end

  it 'is not valid without an email' do
    subject.email = nil
    expect(subject).not_to be_valid
    subject.email = "khainguyen@tamu.edu"
    expect(subject).to be_valid
  end

  it 'is not valid with an email field that is not an email address' do
    subject.email = "ajyasd34"
    expect(subject).not_to be_valid
    subject.email = "khainguyen@tamu.edu"
    subject.email = "@gmail.com"
    expect(subject).not_to be_valid
    subject.email = "khainguyen@tamu.edu"
    expect(subject).to be_valid
  end

  it 'is not valid with an email of over 255 characters' do
    subject.email = "ajyasd34dsjbikwjbwjkfrbnkwjeniu2fbiurvewiuhfr7r43oiferw7hgt8yfruwoedfrhe7gtreruodefreg78fbuewocrhvtgfrbofnweruhvgtfrbijedwruhef7vefrinofhni3wiefhr78gt4urnowefhrr43eiwjhfer97ur4oi32ewefjrhg9r4niew3dmfhr97gu5rni32rf4hg975ur4ie3rjhg9ufr4iwoefjrh97gr4woiefjerhg79r4wiof4jh9"
    expect(subject).not_to be_valid
    subject.email = "khainguyen@tamu.edu"
    expect(subject).to be_valid
  end

  it 'is not valid without a password' do
    subject.password = nil
    expect(subject).not_to be_valid
    subject.password = "dropsies"
    expect(subject).to be_valid
  end

  it 'is not valid with a password under 6 characters' do
    subject.password = "ruhoh"
    expect(subject).not_to be_valid
    subject.password = "dropsies"
    expect(subject).to be_valid
  end

  
  # it 'it is not valid without a year' do
  #   subject.year = nil
  #   expect(subject).not_to be_valid
  #   subject.year = 2020
  # end


  # it 'is not valid without a major' do
  #   subject.major = nil
  #   expect(subject).not_to be_valid
  #   subject.major = "Comp Sci"
  # end
  

  # it 'is not valid without a position' do
  #   subject.position = nil
  #   expect(subject).not_to be_valid
  #   subject.position = "member"
  # end

  # it 'is not valid without a social_points' do
  #   subject.social_points = nil
  #   expect(subject).not_to be_valid
  #   subject.social_points = 0
  # end

  # it 'is not valid without a service_points' do
  #   subject.service_points = nil
  #   expect(subject).not_to be_valid
  #   subject.service_points = 0
  # end

  # it 'is not valid without a brother_points' do
  #   subject.total_hours = nil
  #   expect(subject).not_to be_valid
  #   subject.brother_points = 0
  # end

  # it 'is not valid without an officer status' do
  #   subject.is_officer = nil
  #   expect(subject).not_to be_valid;
  #   subject.is_officer = false;
  # end

  # it 'is not valid without an admin status' do
  #   subject.is_admin = nil
  #   expect(subject).not_to be_valid;
  #   subject.is_admin = true;
  # end
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

  it 'is invalid with an undefined event_id' do
    subject.event_id = nil
    expect(subject).not_to be_valid
    subject.event_id = 2
    expect(subject).to be_valid
  end

  it 'is invalid with an negative event_id' do
    subject.event_id = -1
    expect(subject).not_to be_valid
    subject.event_id = 2
    expect(subject).to be_valid
  end

  it 'is invalid with an undefined user_id' do
    subject.user_id = nil
    expect(subject).not_to be_valid
    subject.user_id = 2
    expect(subject).to be_valid
  end

  it 'is invalid with a negative user_id' do
    subject.user_id = -9
    expect(subject).not_to be_valid
    subject.user_id = 1
    expect(subject).to be_valid
  end
end

#________________________________
# unit testing sponsor
RSpec.describe Sponsor, type: :model do
  subject do
    described_class.new(sponsor_name: "Starbright Inc.", sponsor_type: "silver")
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is invalid without a sponsor name' do
    subject.sponsor_name = nil
    expect(subject).not_to be_valid
    subject.sponsor_name = "NASAHSSIDJS34Awesome"
    expect(subject).to be_valid
  end

  it 'is invalid with an invalid sponsor_type' do
    subject.sponsor_type =" sponsor type"
    expect(subject).not_to be_valid
    subject.sponsor_type = "silver"
    expect(subject).to be_valid
  end

  it 'is invalid with a nil sponsor_type' do
    subject.sponsor_type = nil
    expect(subject).not_to be_valid
    subject.sponsor_type = "Silver"
    expect(subject).to be_valid
  end

  it 'is invalid with an empty sponsor_name' do
    subject.sponsor_name =""
    expect(subject).not_to be_valid
  end

  it 'is valid with all the possible sponsor_types' do
    subject.sponsor_type = "bronze"
    expect(subject).to be_valid
    subject.sponsor_type = "Bronze"
    expect(subject).to be_valid
    subject.sponsor_type = "silver"
    expect(subject).to be_valid
    subject.sponsor_type = "Silver"
    expect(subject).to be_valid
    subject.sponsor_type = "gold"
    expect(subject).to be_valid
    subject.sponsor_type = "Gold"
    expect(subject).to be_valid
  end
end
#________________________________
# unit testing hours_requests
#nevermind because there appears to be no validation for hours_requests

# unit testing events
#nevermind because there appears to be no validation for events
# t.string "event_name"
# t.date "date"
# t.time "time"
# t.string "location"
# t.string "event_type"
# t.float "point_value"
# t.string "description"
# t.string "password"
RSpec.describe MemberEvent, type: :model do
  subject do
    described_class.new(event_name: "", date: "3/12/22", time: "8:00", location: "East", event_type: "random junk", point_value: -3, description: "A really cool event", password: "")
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'apparently, this entity was not designed to be tested' do
    subject.event_name = nil
    subject.date = nil
    subject.time = nil
    subject.location = nil
    subject.event_type = nil
    subject.point_value = nil
    subject.description = nil
    subject.password = nil
    expect(subject).to be_valid
  end
end
#________________________________
#unit testing support_logs
RSpec.describe SupportLog, type: :model do
  subject do
    described_class.new(sponsor_id: 1, event_id: 2)
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is invalid with an undefined event_id' do
    subject.event_id = nil
    expect(subject).not_to be_valid
    subject.event_id = 2
    expect(subject).to be_valid
  end

  it 'is invalid with an negative event_id' do
    subject.event_id = -1
    expect(subject).not_to be_valid
    subject.event_id = 2
    expect(subject).to be_valid
  end

  it 'is invalid with an undefined sponser_id' do
    subject.sponsor_id = nil
    expect(subject).not_to be_valid
    subject.sponsor_id = 2
    expect(subject).to be_valid
  end

  it 'is invalid with a negative sponsor_id' do
    subject.sponsor_id = -9
    expect(subject).not_to be_valid
    subject.sponsor_id = 1
    expect(subject).to be_valid
  end
end

#________________________________
#unit testing messages
RSpec.describe Message, type: :model do
  subject do
    described_class.new(name: "Good message name", content: "some content")
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is invalid with nil name' do
    subject.name = nil
    expect(subject).not_to be_valid
    subject.name = ""
    expect(subject).not_to be_valid
    subject.name = "good name"
    expect(subject).to be_valid
  end

  it 'is invalid with nil content' do
    subject.content = nil
    expect(subject).not_to be_valid
    subject.content = ""
    expect(subject).not_to be_valid
    subject.content = "good content"
    expect(subject).to be_valid
  end
end
#________________________________
#unit testing extra_images
RSpec.describe ExtraImage, type: :model do
  subject do
    described_class.new(group: "Good group name")
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is invalid with nil group' do
    subject.group = nil
    expect(subject).not_to be_valid
    subject.group = ""
    expect(subject).not_to be_valid
    subject.group = "good group name"
    expect(subject).to be_valid
  end
end