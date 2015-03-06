class WelcomeController < ApplicationController
  def index
    if(current_user)
      redirect_to '/groups'
    end
  end
end
