class BreedersController < ApplicationController
  def search_name
    @breeder = Breeder.find_by_name(params[:breeders][:breeder_name])
    if !@breeder
      flash[:message] = "Sorry there are not reviews for #{params[:breeders][:breeder_name]}"
      redirect_to root_path and return
    end
    @pups = @breeder.pups
  end
end
