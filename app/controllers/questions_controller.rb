# Controller for the the questions
class QuestionsController < ApplicationController
  def ask; end

  def answer
    @question = params[:question]
    @answer = 'Great' if params[:question] == 'I am going to work right now!'
    @answer = 'Silly question, get dressed and go to work!' if params[:question][-1, 1] == '?'
    @answer = "I don't care, get dressed and go to work!" if params[:question] != 'I am going to work right now!'
  end
end
