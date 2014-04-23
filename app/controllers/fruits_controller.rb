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

  def edit
    @id = params[:id]
  end

  def update
    id = params[:id]
    fruit = Fruit.find_by(:id => id)
    fruit.update(name: params[:name], description: params[:description])
    redirect_to '/fruits'

  end

end