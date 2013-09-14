class User < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name, :middle_name, :password, :status, :username
  has_many :album
  #has_many :through
  has_many :group
  has_many :business
  
end
