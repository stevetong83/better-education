class Sport
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name

  has_many :college_sports, dependent: :destroy

  validates :name, presence: true
end
