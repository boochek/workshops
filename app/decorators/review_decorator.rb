class ReviewDecorator < Draper::Decorator
  delegate_all

  def author
    user.fullname
  end

end
