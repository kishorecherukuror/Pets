class HumansController < ApplicationController
  def new

  end
  def create
    @name = params[:name]
    @age = params[:age]
    @h = Human.create(:name => @name, :age => @age)
    
    @human = Human.all
  end
end
