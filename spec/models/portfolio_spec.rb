require "rails_helper"

RSpec.describe Portfolio, :type => :model do
  describe Portfolio do
    it { should have_many(:technologies) }
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:body) }
  end
end
