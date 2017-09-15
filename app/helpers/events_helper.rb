module EventsHelper
  def can_subscribe_event?
    if current_user.present?
      @event.user != current_user && !@event.subscriptions.map(&:user).include?(current_user)
    else
      true
    end
  end
end
