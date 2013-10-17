class NewRolyForm
  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming

  attr_accessor :title, :address
  validates :title, :address,
    :presence => true,
    :numericality => true,
    :length => { :minimum => 10, :maximum => 10 }
  #validates :terms_of_service, :acceptance => true

  def initialize(params=nil)
    if params
      @title = params['title']
      @address = params['address']
    end
  end

  def to_key
    nil
  end

end