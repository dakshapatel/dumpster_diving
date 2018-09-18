class User < ApplicationRecord
    has_many :dumpsters
    has_many :goods, through: :dumpsters
end


