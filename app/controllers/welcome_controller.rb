class WelcomeController < ApplicationController
  def index
  end
  def news
  end
  def welcome
    render json: "Welcome to this Page."
  end
  def work
    a = 2
    b = "go"
    Resque.enqueue(PutQueue, a, b)
  end
end
