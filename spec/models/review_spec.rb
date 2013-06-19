require 'spec_helper'

describe Review do
  it { should validate_presence_of(:score) }
  it { should validate_presence_of(:user_id) }
  it { should validate_presence_of(:movie_id) }
  it { should validate_presence_of(:description) }
end
