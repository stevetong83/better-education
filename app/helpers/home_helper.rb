module HomeHelper

  def us_states
  	State.all.map(&:name)
  end

  def conferences
    Conference.all.map do |conference|
      if conference.abbreviation
        "#{conference.name} (#{conference.abbreviation})"
      else
        conference.name
      end
    end
  end
end