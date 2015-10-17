class SubmissionsController < ApplicationController
  def save
   File.open('test.png',"wb") do |file|
   file.write(Base64.decode64(params[:text_area]))
end
  end
end
