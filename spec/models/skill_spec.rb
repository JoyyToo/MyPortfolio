require "rails_helper"

RSpec.describe Skill, :type => :model do
  describe Skill do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:percent_utilized) }
  end
end
