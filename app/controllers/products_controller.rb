class ProductsController < ApplicationController

  def index
    @products = Product.all(:limit => 10)
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def edit
    @product = Product.find(params[:id])
  end

  def create
    @product = Product.new(params[:product])
    #Rails.logger.info"***********Testing1= #{@product.params[]}******************"

    if @product.save
      Rails.logger.info"***********Testing2******************"
      flash[:notice] = "Successfully created product."
      redirect_to @product
    else
      Rails.logger.info"***********Testing3******************"
      render :action => 'new'
    end
  end

  def update
    @product = Product.find(params[:id])

      if @product.update_attributes(params[:product])
        flash[:notice] = 'Product was successfully updated.'
        redirect_to @product
      else
        render action: "edit"
      end
  end


  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    flash[:notice] = "Successfully destroyed products."
    redirect_to products_url
  end

  #def change_picture
  #  if params[:commit] == 'delete'
  #    @product.photo = nil
  #    @product.save
  #  end
  #end
end


