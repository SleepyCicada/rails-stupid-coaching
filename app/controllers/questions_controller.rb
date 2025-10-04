class QuestionsController < ApplicationController
 def ask
 end

def answer
    input = params[:input]

    if input.nil?
      @response = "Please enter something for the coach to respond to."
    else
      @response =
        if input.include?("?")
          "Silly question, get dressed and go to work!"
        elsif input.downcase == "i am going to work"
          "Great!"
        else
          "I don't care, get dressed and go to work!"
        end
    end
  end

end
