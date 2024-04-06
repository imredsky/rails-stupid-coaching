class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:ask]
    if @question == 'I am going to work'
      @result = 'Great !'
    elsif params[:ask].last == '?'
      @result = 'Silly question, get dressed and go to work!'
    else
      @result = 'I dont care, get dressed and go to work!'
    end
  end
end
