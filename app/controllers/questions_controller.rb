class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @answer = params[:query]   # << user-input
    @coach = if @answer.end_with?('?')
               'Silly question, get dressed and go to work!'
             elsif @answer == 'I am going to work'
               'Great!'
             else
               "I don't care, get dressed and go to work!"
             end
  end
end

# def answer
#   @answer = params[:query]   # << user-input
#   @coach = if @answer.blank?
#              'Yalla, say something!!'
#            elsif @answer == 'I am going to work'
#              'Great!'
#            elsif @answer.end_with?('?')
#              'Silly question, get dressed and go to work!'
#            else
#              "I don't care, get dressed and go to work!"
#            end
# end
# end
