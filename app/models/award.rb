class Award
  include Mongoid::Document
  include Mongoid::Timestamps

  field :award 
  field :category

  belongs_to :college

  CATEGORIES = ["academic", "athletic", "social"]
end
