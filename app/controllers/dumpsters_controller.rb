class DumpstersController < ApplicationController
    #skip_before_action :verify_authenticity_token  

    def index 
        @dumpsters = Dumpster.all
    end 

    def new
        @dumpster = Dumpster.new
    end

    def show
        @dumpster = Dumpster.find_by(params[:id])
    end
    
    # def create 
    #    @dumpster = Dumpster.new(dumpster_params)
    #    if @dumpster.save
    #     redirect_to dumpsters_path
    #    else
    #     render :new
    #    end 
    # end 

    def edit
    end 


    private

    def dumpster_params
        params.require(:dumpster).permit(:name, :address, :city, :state, :zipcode, goods: [:name])
    end 


end