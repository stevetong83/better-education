class College
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Slug

  field :name
  slug :name
  field :partial
  field :website

  # Geography
  field :city
  field :state

  # Booleans
  field :paid,    type: Boolean,    default: false
  field :custom,  type: Boolean,    default: false

  # Styles
  field :background_color,  default: "#fff"
  field :headings_color,    default: "#000"
  field :text_color,        default: "#000"
  field :logo

  validates :name,    presence: true
  validates :name,    uniqueness: true
  validate :partial,  uniqueness: true
  

end
