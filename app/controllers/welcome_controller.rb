class WelcomeController < ApplicationController
  def index
  end
  def news
  end
  def welcome
    render json: "Welcome to this Page."
  end
end
