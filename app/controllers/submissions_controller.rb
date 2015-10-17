require 'base64'

class SubmissionsController < ApplicationController
  def save
      File.open("#{Rails.root}/images/file1.png", 'wb') do |f|
      f.write(params[:image].read)
    end
  end
end
