class TopicsController < InheritedResources::Base

  def questions
    Rails.logger.info "Questions action called for topic ID: #{params[:id]}"
    
    topic = Topic.find(params[:id])
    Rails.logger.info "Found topic: #{topic.label}"
    
    questions = topic.questions.order(:text)
    Rails.logger.info "Found #{questions.count} questions for topic"
    
    response = questions.select(:id, :text)
    Rails.logger.info "Returning questions: #{response.to_json}"
    
    render json: response
  end

  def show
    @topic = Topic.find(params[:id])
    @questions = @topic.questions
  end

  private

  def topic_params
    params.require(:topic).permit(:key, :label)
  end

end
