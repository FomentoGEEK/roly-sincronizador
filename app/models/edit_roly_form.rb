class EditRolyForm
  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming

  attr_accessor :title, :address, :description, :web_page, :telephone, :email
  validates :name, :location ,:presence => true,
                      :numericality => true,
                      :length => { :minimum => 10, :maximum => 10 }
  #validates :terms_of_service, :acceptance => true

  def initialize(params=nil)
    if params
      @title = params['title']
      @address = params['address']
      @description = params['description']
      @web_page = params['web_page']
      @telephone = params['telephone']
      @email = params['email']
    end
  end

  def to_key
    nil
  end

end