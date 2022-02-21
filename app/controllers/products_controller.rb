# frozen_string_literal: true

class ProductsController < ApplicationController
  def show
    @developer = Developer.find(params[:developer_id])
    @product = @developer.products.find(params[:id])
  end

  def new
    @developer = Developer.find(params[:developer_id])
    @product = Product.new
  end

  def edit
    @developer = Developer.find(params[:developer_id])
    @product = @developer.products.find(params[:id])
  end

  def create
    @developer = Developer.find(params[:developer_id])
    if params['product']['image'].nil? then params['product']['image'] = 'none.jpg'
    else
      image_load
    end
    @product = @developer.products.create(product_params)
    redirect_to developer_path(@developer)
  end

  def update
    @developer = Developer.find(params[:developer_id])
    @product = @developer.products.find(params[:id])

    image_load unless params['product']['image'].nil?

    @product.update(product_params)

    redirect_to developer_path(@developer)
  end

  def destroy
    @developer = Developer.find(params[:developer_id])
    @product = @developer.products.find(params[:id])
    @product.destroy
    redirect_to developer_path(@developer)
  end

  private

  def product_params
    params.require(:product).permit(:title, :description, :image)
  end

  def image_load
    uploaded_io = product_params['image']
    File.binwrite(Rails.root.join('app', 'assets', 'images', uploaded_io.original_filename),
                  uploaded_io.read)
    params['product']['image'] = uploaded_io.original_filename
  end
end
