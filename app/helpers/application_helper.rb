module ApplicationHelper

  def page_title
    if @page_title.present?
      @page_title
    else
      "Better Education"
    end
  end

  def college_stylesheet

  end

  def college_javascript

  end
end
