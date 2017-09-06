class Subscription < ApplicationRecord
  belongs_to :event
  belongs_to :user, optional: true

  validates :event, presence: true

  validates :user, uniqueness: { scope: :event_id }, if: 'user.present?'

  validates :user_name, presence: true, unless: 'user.present?'

  validates :user_email, presence: true, format: { with: /\A[a-z\d\-_.]+@[a-z\d\-_.]+\z/i }, unless: 'user.present?'
  validates :user_email, uniqueness: { scope: :event_id }, unless: 'user.present?'
  validate :email_of_user, unless: 'user.present?'

  def user_name
    if user.present?
      user.name
    else
      super
    end
  end

  def user_email
    if user.present?
      user.email
    else
      super
    end
  end

  private

  def email_of_user
    if User.find_by(email: user_email)
      errors.add(:user_email, I18n::t('subscriptions.subscription.mail_existing_user'))
    end
  end
end
