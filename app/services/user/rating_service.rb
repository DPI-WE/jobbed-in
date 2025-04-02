class User::RatingService
  MAX_RATING = 60

  # TODO: refactor to hash
  # {
  #   avatar: 30,
  #   headline: 20,
  #   about: 20
  # }

  def initialize(user)
    @user = user
  end

  def call
    rating = 0
    reasons = []

    if @user.avatar.present?
      rating += 20
    else
      reasons << "Missing avatar."
    end

    # TODO: headline
    if @user.headline.present?
      rating += 20
    else
      reasons << "Missing headline."
    end

    # TODO: about
    if @user.about.present?
      rating += 20
    else
      reasons << "Missing about."
    end

    # TODO: location
    # TODO: experiences
    # TODO: education
    #

    percent = rating.to_f / MAX_RATING * 100

    {
      score: [rating, MAX_RATING].min,
      reasons: reasons,
      percent: percent,
      max: MAX_RATING, # don't need to return
      full: rating == MAX_RATING
    }
  end
end
