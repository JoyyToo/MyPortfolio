class Portfolio < ApplicationRecord
  validates_presence_of :title, :body
  has_many :technologies, dependent: :destroy
  accepts_nested_attributes_for :technologies,
                                reject_if: lambda { |attrs| attrs['name'].blank? }

  mount_uploader :thumb_image, PortfolioUploader
  mount_uploader :main_image, PortfolioUploader

  def self.by_position
    order('position ASC')
  end

  # def self.react
  #   where(subtitle: 'React JS')
  # end
  scope :react, -> { where(subtitle: 'React JS') }

  scope :ruby_on_rails, -> { where(subtitle: 'Ruby on Rails') }

end
