class Conference
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name
  field :abbreviation

  has_many :colleges

  validates :name, presence: true

  default_scope order_by('name ASC')
end
