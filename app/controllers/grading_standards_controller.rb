class GradingStandardsController < ApplicationController
  def index
    @grading_standards = GradingStandard.all
  end

  def new
  end

  def edit
  end
end
