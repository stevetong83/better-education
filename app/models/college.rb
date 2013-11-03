class College
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Slug

  field :name
  slug :name
  field :website

  validates :name, uniqueness: true
  validates :name, presence: true

end
