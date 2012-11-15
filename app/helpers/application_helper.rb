module ApplicationHelper
  def fullTitle(pageTitle)
    if pageTitle.empty?
        "empty title"
    else
        pageTitle
    end
  end
end
