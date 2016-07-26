require_dependency "okm_backend/application_controller"

module OkmBackend
  class HumenController < ApplicationController
    def index

    end

    def new
      @human = OkmCore::Human.new
    end

    def create

    end
  end
end
