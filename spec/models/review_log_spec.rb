require 'spec_helper'

describe ReviewLog do

  it {should validate_presence_of(:user_id)}
  it {should validate_presence_of(:review_id)}

  it {should belong_to(:user)}

end
