class PracticePagesController < ApplicationController
  def practice
    @practice_result = PracticeResult.new
  end
end