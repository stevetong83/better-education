class HomeController < ApplicationController

  def index
    @colleges = College.all

    # Temporary testing
    @college_free = College.first
    @college_paid = College.last
  end 

end
