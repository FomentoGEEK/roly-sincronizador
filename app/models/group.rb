class Group < ActiveRecord::Base
  attr_accessible :name, :permissions, :status
  #has_many :through
  belongs_to :user
end
