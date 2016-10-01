class PlayersController < ApplicationController
  def index
    @questions = Question.all.order("created_at DESC")
  end

  def show
    @question = Question.find(params[:id])
    @answer = Answer.new
  end

  def new
    @question = Question.new
  end

  def create
   @question = Question.new(question_params)
     if @question.save
       redirect_to question_path(@question)
     else
       render action: 'new'
     end
  end

  def edit
    @question = Question.find(params[:id])
  end

  def update
    @question = Question.find(params[:id])
    @question.update_attributes(question_params)
    if @question.save
      redirect_to question_path(@question)
    else
      render action: 'edit'
    end
  end

  def destroy
    @question = Question.find(params[:id])
    @question.destroy
    redirect_to "/questions"
  end

  private

  def question_params
    params.require(:question).permit(:name, :description)
  end
end
