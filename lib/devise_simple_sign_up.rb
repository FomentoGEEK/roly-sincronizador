unless defined?(Devise)
    require 'devise'
end

Devise.add_module :simple_sign_up, :model => 'simple_sign_up/models/simple_sign_up'

require 'simple_sign_up/models/simple_sign_up'
