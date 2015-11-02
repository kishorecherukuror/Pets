class PetController < ActionController::Base
  def new
    @pet = Pet.new
  end
  def create
    @name = params[:pet][:name]
    @age = params[:pet][:age]
    if Pet.create(:name => @name,:age => @age)
      redirect_to pet_list_path
    end
  end
  
  def list
    @pet = Pet.all
  end
  
end
