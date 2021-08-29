class PracticeResultsController < ApplicationController
  def index
    @practice_results = PracticeResult.all.order(score: :desc).limit(10)
  end

  def create
    @practice_result = PracticeResult.new(practice_result_params)
    @practice_result.save!
    redirect_to practice_results_path
  end

  private

  def practice_result_params
    params.require(:practice_result).permit(:name, :score)
  end
end
