require 'date'

class WelcomeController < ApplicationController
  def homepage
  end

  def submit
  end

  def thumbnails
  	date =Time.now.strftime("%Y-%m-%d") 
  	@images=Dir.glob("app/assets/images/&#{date}/*.png")
  end

end
