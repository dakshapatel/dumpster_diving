class Good < ApplicationRecord
    belongs_to :user
    belongs_to :dumpster 
    validates :name, presence: :true
end
