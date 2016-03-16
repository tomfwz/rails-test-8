class ProfileDecorator < ApplicationDecorator
  delegate_all

  def dob
    object.dob.try(:strftime, '%d %b %Y')
  end

  def gender
    object.gender.capitalize
  end
end
