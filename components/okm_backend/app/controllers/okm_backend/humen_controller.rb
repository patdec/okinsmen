require_dependency "okm_backend/application_controller"

module OkmBackend
  class HumenController < ApplicationController
    def index

    end

    def new
      @human=OkmCore::Human.new
    end

    def create

    end

    def humen_params
      params.require(:human).permit(:gender,:first_name, :last_name)
    end
  end
end
