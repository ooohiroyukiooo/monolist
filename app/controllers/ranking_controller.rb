class RankingController < ApplicationController

 def have
      haveids = Have.group(:item_id).order('count_item_id desc').limit(10).count(:item_id).keys
      @items = Item.find(haveids)
    end
    
    def want
      wantids = Want.group(:item_id).order('count_item_id desc').limit(10).count(:item_id).keys
      @items = Item.find(wantids)
    end

end
