require "rails_helper"

RSpec.describe Technology, :type => :model do
  describe Technology do
    it { should belong_to(:portfolio) }
  end
end
