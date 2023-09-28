class Admin::DashboardController < ApplicationController

  include HttpAdminAuthConcern

  def show
    @products_count = Product.count(:name)
    @categories_count = Category.count(:name)
  end
end
