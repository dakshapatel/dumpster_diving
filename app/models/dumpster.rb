class Dumpster < ApplicationRecord
    has_many :users
    has_many :goods

   

    def goods=(goods)
        goods.each do |product|
            if !product[:name].empty?
                if item = Goods.find_by(name: product[:name])
                    self.goods << new_item
                else
                    self.equipment.build(name: product[:name])
                end 
            end 
        end 
    end 
end

