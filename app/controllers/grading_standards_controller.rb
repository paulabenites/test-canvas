class GradingStandardsController < ApplicationController
  def index
    @grading_standard = GradingStandard.all
  end

  def new
    @grading_standard = GradingStandard.new
  end

  def create

    @grading_standard = GradingStandard.new(grading_standard_params)
    if @grading_standard.save
        redirect_to grading_standards_path
    else
        render :new
    end

  end

  def edit
    @grading_standard = GradingStandard.find(params[:id])
  end

  def update
    @grading_standard = GradingStandard.find(params[:id])
    if @grading_standard.update(grading_standard_params)
      redirect_to grading_standards_path
    else
      render :edit
    end
  end

  def destroy
    @grading_standards = GradingStandard.find(params[:id])
    @grading_standards.destroy
    redirect_to grading_standards_path
  end

  private
  def grading_standard_params
    params.require(:grading_standard).permit(:title, :data, :usage_count)
  end
end
