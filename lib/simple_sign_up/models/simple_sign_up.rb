module Devise
    module Models
        module SimpleSignUp
            def has_login?
                false
            end

            def attempt_login
                p "login attempt"
            end
        end
    end
end