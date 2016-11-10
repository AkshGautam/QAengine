class StaticPagesController < ApplicationController
  def home
  	if logged_in?
  		@question = current_user.questions.build
  		@feed_items = current_user.feed
  	end
  end
end
