require_dependency "okm_backend/application_controller"

module OkmBackend
  class HumenController < ApplicationController
    def index
      @humen = OkmCore::Human.all
    end

    def new
      @human=OkmCore::Human.new
    end

    def create
      @human=OkmCore::Human.new(human_params)
      if @human.save!
        redirect_to humen_path
      else
        flash :error, 'Wrong parameters'
      end
    end

    def human_params
      params.require(:human).permit(:gender,:first_name, :last_name)
    end
  end
end
