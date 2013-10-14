class EditAlbumForm
  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming

  attr_accessor :name
  validates :name ,:presence => true,
                      :numericality => true,
                      :length => { :minimum => 10, :maximum => 10 }
  #validates :terms_of_service, :acceptance => true

  def initialize(params=nil)
    if params
      @name = params['name']
    end
  end

  def to_key
    nil
  end

end