class FruitsController < ApplicationController

  def create
    fruit = Fruit.new
    fruit.name = params[:name]
    fruit.description = params[:description]
    fruit.save
    redirect_to '/fruits'
  end

  def show
    @fruits = Fruit.all
  end

end