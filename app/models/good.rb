class Good < ApplicationRecord
    belong_to :user
    belong_to :dumpster 
end
