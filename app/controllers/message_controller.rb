class MessageController < ApplicationController
  def show
    puts "$" * 60
    puts "Welcome :"
    puts  params[:user_entry]
    puts "$" * 60
  end
end
