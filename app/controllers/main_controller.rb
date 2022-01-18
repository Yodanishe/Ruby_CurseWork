class MainController < ApplicationController
  def index
    @developers = Developer.limit(3)
    @hits = Product.all.limit(8)
  end
end
