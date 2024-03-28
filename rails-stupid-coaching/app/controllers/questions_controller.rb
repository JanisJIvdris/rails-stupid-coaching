# frozen_string_literal: true

class QuestionsController < ApplicationController
  def question; end

  def answer
    @question = params[:question]
    @answer = if @question.blank?
                'Please, ask your question!'
              elsif (@question =~ /i am going to work/i)
                'Great!'
              elsif @question.end_with?('?')
                'Silly question, get dressed and go to work!'
              else
                "I don't care, get dressed and go to work!"
              end
  end
end
