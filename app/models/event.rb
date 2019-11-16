class Event < ApplicationRecord
  def free?
    price.blank? || price.zero?
  end

  # upcoming is a class method
  # that's why the self in front of its name
  def self.upcoming
    # no need to specify Event.where(...)
    # cause Event is the class name and it implicity is meant
    where('starts_at>=?',10.years.ago).order("starts_at")
  end

end
