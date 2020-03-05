class Admin::DashboardController < ApplicationController
  
  def show
    @categoryCount = Category.count
    @productsCount = Product.count
  end

end
