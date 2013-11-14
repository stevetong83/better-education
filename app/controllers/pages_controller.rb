class PagesController < ApplicationController

  def results
    @colleges = College.search(params[:state], params[:conference])
  end
end
