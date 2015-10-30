class WelcomeController < ApplicationController
  def homepage
  end

  def submit
  end

  def thumbnails
  	@images=Dir.glob("app/assets/images/*/*.png")
  end

end
