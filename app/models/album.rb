class Album < ActiveRecord::Base
  attr_accessible :description, :name, :privacy_setting, :status
end
