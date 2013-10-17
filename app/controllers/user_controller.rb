class UserController < ActionController::Base
  protect_from_forgery
  # mock controller to quickly initialize user as if recently created
  
  # creates two new users
  def init_users
    @new_user = User.new
    @new_user.first_name = "Gerardo"
    @new_user.last_name = "Tasistro"
    @new_user.middle_name = "Giubetic"
    @new_user.email = "gtasistro@gmail.com"
    @new_user.username = "saurondor"
    @new_user.status = 1
    @new_user.save
    @new_user = User.new
    @new_user.first_name = "Rodrigo"
    @new_user.last_name = "Valades"
    @new_user.middle_name = ""
    @new_user.email = "rodrigo@valad.es"
    @new_user.username = "rod.valades"
    @new_user.status = 1
    @new_user.save
  end
  
  
  # creates two roly cards for each new user, one private and one public
  def init_user_rolies
    @roly_user = User.find(1)
    @roly_card = RolyCard.new
    @roly_card.title = "Tiempo Meta"
    @roly_card.user = @roly_user
    @roly_card.address = "Emilio Carranza No 5 Texcoco Estado de Mexico, 56170"
    @roly_card.telephone = "+52-5959540025"
    @roly_card.privacy = 0
    @roly_card.latitude = 19.4328 
    @roly_card.longitude = -99.1333
    @roly_card.description = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec nec molestie sapien. Nunc aliquet dictum arcu accumsan facilisis. Vivamus eu mi lorem. Vivamus volutpat scelerisque tempor. Aliquam sed nulla urna. Pellentesque quis nisi eget turpis volutpat iaculis id id massa."
    @roly_card.email = "gtasistro@tiempometa.com"
    @roly_card.facebook = "tiempometa"
    @roly_card.web_page = "www.tiempometa.com"    
    @roly_card.save

    @roly_card = RolyCard.new
    @roly_card.title = "Private Tiempo Meta"
    @roly_card.user = @roly_user
    @roly_card.address = "Emilio Carranza No 5 Texcoco Estado de Mexico, 56170"
    @roly_card.telephone = "+52-5959540025"
    @roly_card.privacy = 1
    @roly_card.latitude = 19.4328 
    @roly_card.longitude = -99.1333
    @roly_card.description = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec nec molestie sapien. Nunc aliquet dictum arcu accumsan facilisis. Vivamus eu mi lorem. Vivamus volutpat scelerisque tempor. Aliquam sed nulla urna. Pellentesque quis nisi eget turpis volutpat iaculis id id massa."
    @roly_card.email = "gtasistro@tiempometa.com"
    @roly_card.facebook = "tiempometa"
    @roly_card.web_page = "www.tiempometa.com"    
    @roly_card.save
    
    @roly_user = User.find(2)
    @roly_card = RolyCard.new
    @roly_card.title = "Fomento Geek"
    @roly_card.user = @roly_user
    @roly_card.telephone = "+1-545-232-3435"
    @roly_card.privacy = 0
    @roly_card.latitude = 37.7833
    @roly_card.longitude = -122.4167
    @roly_card.address = "1020 Somewhere Dr., Palo Alto California, 23443"
    @roly_card.description = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec nec molestie sapien. Nunc aliquet dictum arcu accumsan facilisis. Vivamus eu mi lorem. Vivamus volutpat scelerisque tempor. Aliquam sed nulla urna. Pellentesque quis nisi eget turpis volutpat iaculis id id massa."
    @roly_card.email = "rodrigo.valades@fomentogeek.com"
    @roly_card.facebook = "fomentogeek"
    @roly_card.web_page = "www.fomentogeek.com"    
    @roly_card.save
    
    @roly_card = RolyCard.new
    @roly_card.title = "Private Fomento Geek"
    @roly_card.user = @roly_user
    @roly_card.telephone = "+1-545-232-3435"
    @roly_card.privacy = 1
    @roly_card.latitude = 37.7833
    @roly_card.longitude = -122.4167
    @roly_card.address = "1020 Somewhere Dr., Palo Alto California, 23443"
    @roly_card.description = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec nec molestie sapien. Nunc aliquet dictum arcu accumsan facilisis. Vivamus eu mi lorem. Vivamus volutpat scelerisque tempor. Aliquam sed nulla urna. Pellentesque quis nisi eget turpis volutpat iaculis id id massa."
    @roly_card.email = "rodrigo.valades@fomentogeek.com"
    @roly_card.facebook = "fomentogeek"
    @roly_card.web_page = "www.fomentogeek.com"    
    @roly_card.save
    
  end
  
  # populates user rolodex with roly card of another user
  def assign_rolies_to_user
    @roly_owner = User.find(1)
    @roly_user = User.find(2)
    # @roly_cards = RolyCard.findByUser(@roly_owner)
    @user_roly_card = UserRolyCard.new
    @user_roly_card.user = @roly_user
    @user_roly_card.last_viewed = DateTime.now
    @user_roly_card.last_edited = DateTime.now
    @user_roly_card.roly_card = RolyCard.where(user_id: @roly_owner).first
    @user_roly_card.save
  end
  
  
end
