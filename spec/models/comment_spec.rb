require 'rails_helper'

RSpec.describe Comment, type: :model do
  describe Comment do
    it { should validate_presence_of(:content) }
   end
end
