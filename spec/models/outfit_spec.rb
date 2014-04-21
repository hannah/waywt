require 'spec_helper'

describe Outfit do
  it {should validate_presence_of(:image)}
  it {should belong_to(:user)}
end
