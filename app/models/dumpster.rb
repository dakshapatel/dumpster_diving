class Dumpster < ApplicationRecord
    has_many :users
    has_many :goods
end

