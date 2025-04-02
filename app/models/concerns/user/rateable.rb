
# concern
# user.profile_rating

# service
# UserRatingService.new(user).call

module User::Rateable
  extend ActiveSupport::Concern

  def profile_rating
    User::RatingService.new(self).call
  end
end
