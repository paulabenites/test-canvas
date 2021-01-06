class GradingStandardsController < ApplicationController
  def index
    @grading_standards = GradingStandard.all
  end

  def new
    @grading_standards = GradingStandard.new
  end

  def edit
    @grading_standards = GradingStandard.find(params[:id])
  end

  def update
    @grading_standards = GradingStandard.find(params[:id])
    if @grading_standards.update(grading_params)
      redirect_to grading_standars_path
    else
      render :edit
    end
  end

  def delete
    @grading_standards = GradingStandard.find(params[:id])
    @grading_standards.destroy
    redirect_to grading_standars_path
  end

  private
  def grading_params
    params.require(:grading_standards).permit(:title, :data, :usage_count)
  end
end
