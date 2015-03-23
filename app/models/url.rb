class Url < ActiveRecord::Base

  validates :long_url, format: { with: /(https?:|www)/ }
  before_save :make_short_url
  belongs_to :user


  private
  def make_short_url
    logger.info "hit method"
    self.short_url ||= get_short_url
  end
end
