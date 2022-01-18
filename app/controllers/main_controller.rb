class MainController < ApplicationController

  before_action :set_page_options

  def index
    @developers = Developer.limit(3)
    @hits = Product.all.limit(8)
  end

  def set_page_options
    @page_title="SIBGUCHI GAMESHOP"
    @page_description="Games"
    @page_keywords="Shooter Adventure Horror Sport"
  end
end
