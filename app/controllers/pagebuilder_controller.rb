class PagebuilderController < ApplicationController
    before_action :authenticate_user!
    skip_before_action :verify_authenticity_token


    def index
    end

    def createtemplate
        @template = Template.find_by user_id: current_user.id
        if @template == nil
            @template = Template.new()
            @template.user_id = current_user.id
            @template.temp = params
        else
            @template.temp = params
        end

        @template.save!
    end

    def loadtemplate
        @template = Template.find_by user_id: current_user.id
        if @template == nil
            puts "nil"
        else
            render json: @template.temp
        end
    end
    
end
