class State
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name

  validates :name, presence: true
  validates :name, uniqueness: true

  default_scope order_by('name ASC')
end
