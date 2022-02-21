# frozen_string_literal: true

class DevelopersController < ApplicationController
  def index
    @developers = Developer.all
  end

  def search
    @products = Product.all
    @products = @products.where('name LIKE ?', "%#{params[:q]}%")
  end

  def show
    @developer = Developer.find(params[:id])
  end

  def new
    @developer = Developer.new
  end

  def edit
    @developer = Developer.find(params[:id])
  end

  def create
    @developer = Developer.new(developer_params)
    developer_save
  end

  def update
    @developer = Developer.find(params[:id])
    developer_update
  end

  def destroy
    @developer = Developer.find(params[:id])
    @developer.destroy
  end

  private

  def developer_params
    params.require(:developer).permit(:title)
  end

  def developer_save
    if @developer.save
      redirect_to @developer
    else
      render 'new'
    end
  end

  def developer_update
    if @developer.update(developer_params)
      redirect_to @developer
    else
      render 'edit'
    end
  end
end
