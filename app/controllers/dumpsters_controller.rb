class DumpstersController < ApplicationController
    skip_before_action :verify_authenticity_token  

    def index 
        @dumpsters = Dumpster.all
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

    private

    def dumpster_params
        params.require(:dumpster).permit(:name, :address, :city, :state, :description, goods: [:name])
    end 
end

{"authenticity_token"=>"6sXEdDe7sVmCJfJuddLptFmeQckVK3H5ReVBZFXL7kUG2AvOeteHFugjBBmzWWGiEa3tVqrqlo2UolJ2nIbVvw==", 
    "dumpster"=>{
        "name"=>"Walmart", 
        "address"=>"60 Walmart Circle", 
        "city"=>"Baltimore", 
        "state"=>"MD", 
        "description"=>"NE corner of parking lot. ", 
        "goods"=>[{"name"=>"BabyClothes"}, {"name"=>"Fruit"}, {"name"=>"Orange Juice"}, {"name"=>""}, {"name"=>""}]}, "controller"=>"dumpsters", "action"=>"create"}