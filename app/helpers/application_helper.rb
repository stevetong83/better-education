module ApplicationHelper

  def page_title
    if @page_title.present?
      @page_title
    else
      "Better Education"
    end
  end

  def partial
    @partial if @partial.present?
  end

end
