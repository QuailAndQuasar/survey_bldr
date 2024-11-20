class OptionsController < InheritedResources::Base

  private

    def option_params
      params.require(:option).permit(:text, :sort_index)
    end

end
