class User < ApplicationRecord
    has_many :dumpsters, through: :dumpsters
    has_many :goods, through: :dumpsters
    has_many :comments
end


