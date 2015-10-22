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
  	
  	  puts "title"
  	  puts title 
  	  puts "title type"
  	  puts title.class

  	  title = title.split('=').last

  	  puts "title changed"
  	  puts title
  	  
  	  date = Date.today.to_s


  	  #@title = params[:user]

  	  #@date = "date"
  	  Dir.mkdir(date) unless File.exists?(date)

      File.open("#{Rails.root}/#{date}/#{title}.png", 'wb') do |f|
      	f.write(params[:image].read)

    end
  end

end
