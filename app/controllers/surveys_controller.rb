class SurveysController < InheritedResources::Base

  private

    def survey_params
      params.require(:survey).permit(:name, :topic)
    end

end
