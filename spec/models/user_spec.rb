require 'spec_helper'

describe User do
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:password) }

  it 'saves a new user' do
    user = FactoryGirl.build(:user)
    expect(user.save).to be true
  end
end
