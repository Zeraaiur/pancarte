class ProductsController < ApplicationController
  def index
    @categories = Category.all.order(:name)
    @classes = Category.pluck(:classe).sort.uniq
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
