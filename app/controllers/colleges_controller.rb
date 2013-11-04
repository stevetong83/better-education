class CollegesController < ApplicationController

  layout 'college'

  def show
    @college = College.find params[:id]
    @page_title = "#{@college.name}"
  end
end
