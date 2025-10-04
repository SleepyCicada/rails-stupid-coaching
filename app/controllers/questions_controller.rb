class QuestionsController < ApplicationController
 def ask
 end

  def answer
    input = params[:input]

    if input.blank?
      @response = "Ask and you will be answered by coach."
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
