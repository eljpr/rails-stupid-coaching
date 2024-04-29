class QuestionsController < ApplicationController
  def ask; end

  def answer
    @answer = {
      great: 'Great!',
      silly: 'question, get dressed and go to work!',
      idc: "I don't care, get dressed and go to work!"
    }

    if params[:question] == 'I am going to work'
      @response = @answer[:great]
    elsif params[:question].include? '?'
      @response = @answer[:silly]
    else
      @response = @answer[:idc]
    end
  end
end
