class Conference
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name

  has_many :colleges

  validates :name, presence: true
end
