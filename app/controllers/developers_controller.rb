# frozen_string_literal: true

class DevelopersController < ApplicationController
  def index
    @developers = Developer.all
  end

  def search
    @products = Product.all
    @products = @products.where('title LIKE ?', "%#{params[:q]}%")
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
    if params['developer']['image'].nil? then params['developer']['image'] = 'none.jpg'
    else
      image_load
    end
    @developer = Developer.new(developer_params)
    developer_save
  end

  def update
    @developer = Developer.find(params[:id])
    image_load unless params['image'].nil?
    developer_update
  end

  def destroy
    @developer = Developer.find(params[:id])
    @developer.destroy
    redirect_to developers_path
  end

  private

  def developer_params
    params.require(:developer).permit(:title, :description, :image)
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

  def image_load
    uploaded_io = developer_params['image']
    File.binwrite(Rails.root.join('app', 'assets', 'images', uploaded_io.original_filename),
                  uploaded_io.read)
    params['developer']['image'] = uploaded_io.original_filename
  end
end
