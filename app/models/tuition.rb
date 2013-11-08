class Tuition
  include Mongoid::Document
  include Mongoid::Timestamps

  field :year, type: Integer
  field :out_of_state
  field :in_state_tuition
  field :college_id

  belongs_to :college 

  validates :year, numericality: true
  validates :year, :out_of_state, :in_state, presence: true

  default_scope order_by('year DESC')
end
