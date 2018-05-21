class WelcomeController < ApplicationController
  def index
  end
  def news
  end
  def welcome
    render json: "Welcome to this Page."
  end
  def sayonara
    render json: "GoodBye, see you soon."
  end
end
