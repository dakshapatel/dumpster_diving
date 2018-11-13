class Comment < ApplicationRecord
    belongs_to :dumpster
    belongs_to :user
end
