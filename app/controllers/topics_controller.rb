class TopicsController < InheritedResources::Base

  private

    def topic_params
      params.require(:topic).permit(:key, :label)
    end

end
