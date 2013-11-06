class Link
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name
  field :url

  belongs_to :college

  validates :name, :url, presence: true
end
