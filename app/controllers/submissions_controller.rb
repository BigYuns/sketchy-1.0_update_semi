require 'base64'
require 'date'
class SubmissionsController < ApplicationController
  def save
  	  #directory_name = DateTime.now.strftime('%m/%d/%Y')
  	  title = params[:user]

  	  puts "here is the title" 
  	  puts params
  	  
  	  puts "user"
  	  puts params[:user]
  	
  	  title = title.split('=').last
  	  date = Date.today.to_s
  	  #@title = params[:user]

  	  #@date = "date"
  	  Dir.mkdir("app/assets/images/"+"&"+date) unless File.exists?("app/assets/images/"+"&"+date)

      #File.open("#{Rails.root}/public/#{title}.png", 'wb') do |f|
      #File.open("#{Rails.root}/#{date}/#{title}.png", 'wb') do |f|
      File.open("#{Rails.root}/app/assets/images/&#{date}/#{title}.png", 'wb') do |f|
      	f.write(params[:image].read)

    end
  end

end
