class ApplicationController < ActionController::Base
  before_filter :authenticate_user!, :provide_user, :load_updates

  protect_from_forgery

  def provide_user
  	@user = current_user
  	@admin = current_user.admin if current_user
  end

  def load_updates
  	if current_user && current_user.admin 
  		@recent_transactions = Transaction.last(5)
  		@limited_conferences = Conference
  	elsif current_user
  		@recent_transactions = current_user.transactions.last(5)
  		@limited_conferences = current_user.conferences
  	end
  end
end
