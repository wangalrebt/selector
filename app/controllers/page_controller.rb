class PageController < ApplicationController
  def index

  end
  def selector
    @url_address = params[:url]
    @css_selector = params[:cssSelector]
  end
end
