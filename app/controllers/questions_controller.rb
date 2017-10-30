class QuestionsController < ApplicationController
  before_action :set_question, only: [:show, :edit, :update, :destroy]

  def index
    @questions = Question.all

    respond_to do |format|
      format.html { render :index}
    end
  end

  def new
    @question = Question.new
  end

  def show
    respond_to do |format|
      format.html { render :show }
    end
  end


  private

  def set_question
    @question = Question.find(params[:id])
  end
end
