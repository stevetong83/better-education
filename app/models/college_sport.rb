class CollegeSport
  include Mongoid::Document
  include Mongoid::Timestamps

  field :college_id
  field :sport_id
  field :mens,        type: Boolean
  field :womens,      type: Boolean
  field :division

  belongs_to :college 
  belongs_to :sport
  
end
