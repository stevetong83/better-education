class College
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Slug

  field :name
  slug :name
  field :partial
  field :website

  #Booleans
  field :paid,    type: Boolean,    default: false
  field :custom,  type: Boolean,    default: false

  validates :name,    presence: true
  validates :name,    uniqueness: true
  validate :partial,  uniqueness: true
  

end
