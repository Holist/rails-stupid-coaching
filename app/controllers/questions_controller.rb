class QuestionsController < ApplicationController
  def answer
    @question = params[:question]
    @answer = coach_answer(@question)
  end

  def ask
  end

  def coach_answer(question)
    if question == question.upcase
        if question == "I AM GOING TO WORK RIGHT NOW!"
          return "ok ok"
        elsif question.include? "?"
          return "I can feel your motivation! Silly question, get dressed and go to work!"
        else "I can feel your motivation! I don't care, get dressed and go to work!"
        end
      else "I don't care, get dressed and go to work!"
    end
  end

end
