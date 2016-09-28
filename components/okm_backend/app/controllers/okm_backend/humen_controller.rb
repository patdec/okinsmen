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
        respond_to do |format|
          format.html { redirect_to humen_path, notice: "Human successfully created" }
          format.json { render json status: :ok }
        end
      else
        respond_to do |format|
          format.html { flash :error, 'Wrong parameters' }
          format.json { render json: @human.errors, status: :unprocessable_entity  }
        end
      end
    end

    def human_params
      params.require(:human).permit(:gender, :first_name, :last_name)
    end
  end
end
