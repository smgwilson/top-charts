module ApplicationHelper

  # returns hyperlink to the app icon
  def app_icon(a)
    a.app_icon
  end

  # returns hyperlink to the app URL
  def app_url(a)
    a.app_url
  end

  # converts star ratings to star images
  def app_ratings (num, a)
    max_stars = 5
    star_array = []
    half_stars = 0
    on_stars = 0

    if a == 0
      off_stars = max_stars
    elsif a < 1
      half_stars = 1
      off_stars = max_stars - half_stars
    else
      on_stars = a.floor
      a % on_stars == 1 ? half_stars = 0 : half_stars = 1
      off_stars = (max_stars - (on_stars + half_stars))
    end

    on_stars.times do
      star_array <<  'star-on.png'
    end

    half_stars.times do
      star_array <<  'star-half.png'
    end

    off_stars.times do
      star_array <<  'star-off.png'
    end

    return star_array[num]
  end

end
