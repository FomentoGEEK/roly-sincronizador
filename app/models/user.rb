class User < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name, :middle_name, :password, :status, :username
  has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  has_many :album
  #has_many :through
  has_many :group
  has_many :business
  has_many :roly_card
  
  
end
