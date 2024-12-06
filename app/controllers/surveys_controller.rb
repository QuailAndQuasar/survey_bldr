class SurveysController < InheritedResources::Base

  private

  def survey_params
    params.require(:survey).permit(:name, :topic_id, :customer_id, :question_id)
  end

end
