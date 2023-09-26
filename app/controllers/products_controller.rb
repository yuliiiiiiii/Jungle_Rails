class ProductsController < ApplicationController

  def index
    @products = Product.all.order(created_at: :desc)
    #now @products will be accessible to index.html.erb template

    #it implicitly renders index.html.erb template:
    # render :index

  end

  def show
    @product = Product.find params[:id]
    #it implicitly renders show.htmml.erb
    # render :show
    # only when the name of template does not match with the method, need to write render :XX explicitly
  end

end
