class RegistrationsController < Devise::RegistrationsController

    def new_mobile
        redirect_to action: :new
    end

end