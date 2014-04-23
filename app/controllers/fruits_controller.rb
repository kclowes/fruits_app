class FruitsController < ApplicationController

  def create
    Fruit.create(name: params[:name], description: params[:description])
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

  def destroy
    id = params[:id]
    fruit = Fruit.find(id)
    fruit.destroy
    redirect_to '/fruits'
  end

end