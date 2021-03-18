class SessionsController < ApplicationController
    def home

    end

    def login 
        
    end

    def destroy
        session.clear 
        redirect_to root_path

    end

end
