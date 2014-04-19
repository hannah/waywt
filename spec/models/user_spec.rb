require 'spec_helper'

describe User do
  it {should have_valid(:username)}
  it {should have_valid(:password)}
  it {should have_valid(:email)}
end
