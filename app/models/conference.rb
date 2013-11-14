class Conference
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name
  field :abbreviation

  has_many :colleges

  validates :name, presence: true
end
