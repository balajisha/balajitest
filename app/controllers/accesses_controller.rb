class AccessesController < ApplicationController
	def index
		@accesses=Detail.all
	end

	 def edit
  	@access = Detail.find(params[:id])
  end

  def update
  	@access = Detail.find(params[:id])
 
    if @access.update(detail_params)
      redirect_to accesses_path
    else
      render 'edit'
    end
  end

   protected
  def detail_params
  	params.require(:detail).permit(:id,:firstname,:lastname,:age,:salary,:location)
  end
	
end
