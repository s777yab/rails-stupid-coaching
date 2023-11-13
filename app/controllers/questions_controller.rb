class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question].capitalize
    if @question == 'I am going to work' || @question == 'Im going to work'
      @answer = 'Great'
    elsif @question.include?('?')
      @answer = 'Silly question, get dressed and go to work!.'
    else
      @answer = 'I dont care, get dressed and go to work.'
    end
  end
end
