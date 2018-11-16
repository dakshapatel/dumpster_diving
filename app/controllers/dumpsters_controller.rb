class DumpstersController < ApplicationController
    #skip_before_action :verify_authenticity_token  

    def index 
        @dumpsters = Dumpster.all
    end 

    

    def show
        @dumpster = Dumpster.find(params[:id])
    end

    def new
        @dumpster = Dumpster.new
    end
    
    def create 
        
       @dumpster = Dumpster.new(dumpster_params)
       if @dumpster.save
        redirect_to dumpsters_path
       else
        render :new
       end 
    end 

    def edit
        @dumpster = Dumpster.find(params[:id])
    end 

    def update
        @dumpster = Dumpster.find(params[:id])
        
        @dumpster.update(dumpster_params)

        if @dumpster.save
            redirect_to dumpsters_path
        else 
            render :edit
        end 
    end 

    def destroy 
        @dumpster = Dumpster.find(params[:id])
        @dumpster.destroy
        flash[:notice] = "Dumpster Deleted."
        redirect_to dumpsters_path
    end 

    private

    def dumpster_params
        params.require(:dumpster).permit(:name, :address, :city, :state, :zipcode, goods: [:name])
    end 


end