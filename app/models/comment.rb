class Comment < ApplicationRecord
  belongs_to :event
  belongs_to :user, optional: true

  validates :event, presence: true
  validates :body, presence: true


  validates :user_name, presence: true, unless: proc { |user| user.present? }

  def user_name
    if user.present?
      user.name
    else
      super
    end
  end
end
