class Link
  include Mongoid::Document
  include Mongoid::Timestamps

  field :title
  field :url
  field :description

  belongs_to :college

  validates :name, :url, presence: true
end
