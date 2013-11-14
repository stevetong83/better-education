module HomeHelper

  def us_states
  	State.all.map(&:name)
  end

  def conferences
    Conference.all.map(&:name)
  end
end