class MyRolyCardsController < ApplicationController
  
  def show
    @rolies = RolyCard.findByUser(@user)
  end
  
  def share
    @roly = RolyCard.findByIdUser(params[:roly_id],@user)
    @roly.share_code = "456F34"
    @roly.share_date = DateTime.now()
    @roly.save
  end
  
  def view
    @roly = RolyCard.findByIdUser(params[:roly_id],@user)
    
  end
  
  def edit
    if (request.get?)
      @roly = RolyCard.find(params[:roly_id])
      @edit_roly_form = EditRolyForm.new(@roly)
    else
      @roly = RolyCard.find(params[:roly_id])
      @roly.update_attributes(params[:edit_roly_form])
      @edit_roly_form = EditRolyForm.new(@roly)
      @roly.save
      redirect_to "/my_roly_cards/view/"+@roly.id.to_s
    end
  end
  
  def new
    if request.get?
    @new_roly_form = NewRolyForm.new
    else
      @new_roly_form = NewRolyForm.new(params[:new_roly_form])
      @roly = RolyCard.new
      @roly.title = @new_roly_form.title
      @roly.address = @new_roly_form.address
      @roly.user = @user
      @roly.save
      redirect_to "/my_roly_cards/view/"+@roly.id.to_s
    end
  end
end
