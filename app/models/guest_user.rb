class GuestUser < User
  attr_accessor :name, :first_name, :last_name, :email
  validates_presence_of :name, :email
end
