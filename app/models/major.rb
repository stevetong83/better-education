class Major
  include Mongoid::Document
  include Mongoid::Timestamps

  field :major

  has_and_belongs_to_many :colleges, inverse_of: :colleges
end
