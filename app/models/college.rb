class College
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Slug

  field :name
  slug :name
  field :partial

  # University website links
  field :website
  field :athletics_website

  #about
  field :mascot
  field :conference_id

  # Geography
  field :city
  field :state

  # Booleans
  field :paid,    type: Boolean,    default: false
  field :custom,  type: Boolean,    default: false
  field :live,    type: Boolean,    default: false

  # Styles
  field :background_color,  default: "#fff"
  field :headings_color,    default: "#000"
  field :text_color,        default: "#000"
  field :logo

  belongs_to :conference
  has_many :college_sports, dependent: :destroy
  has_many :links, dependent: :destroy

  validates :name,    presence: true
  validates :name,    uniqueness: true
  validate :partial,  uniqueness: true

  scope :custom, -> { where(custom: true) }
  

end
