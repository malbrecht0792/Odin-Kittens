class KittensController < ApplicationController
  
  def new
  	@kitten = Kitten.new
  end

  def create
  	@kitten = Kitten.new(kitten_params)
  	if @kitten.save
  		flash[:success] = "Kitten Created"
  		redirect_to kitten_path(@kitten.id)
  	else
  		render 'new'
  	end
  end

  def index
  	@kittens = Kitten.all
  end

  def show
  	@kitten = Kitten.find(params[:id])
  end

  def edit
  	@kitten = Kitten.find(params[:id])
  end

  def update
  	@kitten = Kitten.find(params[:id])
  	if @kitten.update_attributes(kitten_params)
  		flash[:success] = "Kitten Edited"
  		redirect_to kitten_path(@kitten.id)
  	else
  		render 'edit'
  	end
  end

  def destroy
  	Kitten.find(params[:id]).destroy
  	flash[:success] = "Kitten Deleted"
    redirect_to kittens_path
  end

  private

	  def kitten_params
	  	params.require(:kitten).permit(:name, :age, :cuteness, :softness)
	  end

end
