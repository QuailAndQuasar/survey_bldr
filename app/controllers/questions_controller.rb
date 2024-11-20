class QuestionsController < InheritedResources::Base

  private

    def question_params
      params.require(:question).permit(:text, :topic, :sort_index)
    end

end
