require 'spec_helper'

describe Tag do
  it { should have_many(:outfits) }
end
