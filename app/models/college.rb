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
  field :description
  field :mascot
  field :conference_id

  # Geography
  field :city
  field :state_id

  # Social
  field :facebook
  field :twitter
  field :youtube
  field :flickr

  # Booleans
  field :paid,    type: Boolean,    default: false
  field :custom,  type: Boolean,    default: false
  field :live,    type: Boolean,    default: false

  # Styles
  field :background_color,  default: "#fff"
  field :headings_color,    default: "#000"
  field :logo

  belongs_to :conference,     index: true
  belongs_to :state,          index: true

  has_many :college_sports,   dependent: :destroy
  has_many :links,            dependent: :destroy
  has_many :tuitions,         dependent: :destroy
  has_many :awards,           dependent: :destroy

  has_and_belongs_to_many :majors, inverse_of: :majors

  validates :name,      presence: true
  validates :name,      uniqueness: true
  validates :partial,   uniqueness: true

  scope :custom, -> { where(custom: true) }
  scope :abc, -> { order_by('name ASC') }
  scope :school -> (school) {where(name: school)}
  scope :state, -> (state) { where(state: state) }
  scope :conference, -> (conference) { where(conference: conference) }


  def to_param
    slug
  end

  def self.search(school, state, conference)
    if school.present? || state.present? || conference.present?
      colleges = College.abc
      colleges = colleges.school(school) if school.present?
      colleges = colleges.state(State.where(name: state).first.id) if state.present?
      colleges = colleges.conference(Conference.where(name: conference).first.id) if conference.present?
      colleges
    else
      self.abc
    end

  end
  
end
