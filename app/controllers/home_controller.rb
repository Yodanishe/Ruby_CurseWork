# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    @developers = Developer.all
  end
end
