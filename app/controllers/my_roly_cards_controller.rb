class MyRolyCardsController < ApplicationController

  before_filter :authenticate_user!

  def index
    @rolies = RolyCard.findByUser(current_user)
  end

  def show
    @roly = RolyCard.find(params[:id])
  end

  def new
    @new_roly_form = RolyCard.new
  end

  def create
    @roly = RolyCard.new(params[:roly_card])
    @roly.user = current_user
    if @roly.save
      redirect_to my_roly_cards_path(@roly)
    else
      redirect_to action: :new
    end
  end

  def share
    @roly = RolyCard.findByIdUser(params[:roly_id],@user)
    @roly.share_code = "456F34"
    @roly.share_date = DateTime.now()
    @roly.save
  end

  def update
    @roly = RolyCard.find(params[:id])
    @roly.update_attributes(params[:roly_card])
    @roly.save
    redirect_to action: :show
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
    @roly = RolyCard.find(params[:id])
  end

  def destroy
    @roly = RolyCard.find(params[:id])
    @roly.destroy
    redirect_to action: :index
  end

end
