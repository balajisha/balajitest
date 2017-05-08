class DetailsController < ApplicationController
def new
  	@detail= Detail.new
    end
def create

  	@user=current_user
  	params.permit!
  	@detail = current_user.build_detail(params[:detail])
  	if @detail.save
     redirect_to '/details/show'

    else
      render 'new'
    end
  end 
 def show
  	
    @detai= current_user
  end

  def edit
@detail =current_user.detail(params[:id])
  end

  def update
@detail = current_user.detail(params[:id])
    if @detail.update(detail_params)
      redirect_to '/details/show'
    else
      render 'edit'
    end
  end

  protected
  def detail_params
  	params.require(:detail).permit(:id,:firstname,:lastname,:age,:salary,:location)
  end

end