class UserRolyCard < ActiveRecord::Base
  attr_accessible :favorite, :todays, :notes, :tags, :last_viewed, :last_edited
  belongs_to :roly_card
  belongs_to :user
  
  
  def self.get_favorites(user)
    RolyCard.joins("LEFT JOIN user_roly_cards ON user_roly_cards.roly_card_id = roly_cards.id").where("user_roly_cards.favorite = 1 AND user_roly_cards.user_id = ?", user)
  end

  def self.get_recent(user)
    RolyCard.joins("LEFT JOIN user_roly_cards ON user_roly_cards.roly_card_id = roly_cards.id").where("user_roly_cards.user_id = ?", user).order("last_edited DESC").limit(20)
  end

  def self.get_recently_added(user)
    RolyCard.joins("LEFT JOIN user_roly_cards ON user_roly_cards.roly_card_id = roly_cards.id").where("user_roly_cards.user_id = ?", user).order("created_at DESC").limit(20)
  end

  def self.get_todays(user)
    RolyCard.joins("LEFT JOIN user_roly_cards ON user_roly_cards.roly_card_id = roly_cards.id").where("user_roly_cards.todays = 1 AND user_roly_cards.user_id = ?", user)
  end



end
