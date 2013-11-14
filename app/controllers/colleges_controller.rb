class CollegesController < ApplicationController

  layout 'college'

  def show
    @college = College.find params[:id]
    @page_title = "#{@college.name}"
    @partial = @college.partial if @college.partial
    @sports = @college.college_sports.includes(:sport).all
    @links = @college.links.all
    @tuition = @college.tuitions.limit(5)
    @majors = @college.majors.all
    @awards = @college.awards.all
  end
end
