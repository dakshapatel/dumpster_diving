class DumpstersController < ApplicationController

    def index 
        @dumpsters = Dumpster.all
    end 

    def new
        @dumpster = Dumpster.new 
    end 

    def create 

    end 
end
