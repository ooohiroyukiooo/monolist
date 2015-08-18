class RankingController < ApplicationController

 def have
      ranking_have = Have.group(:item_id).order('count_item_id desc').limit(10).count(:item_id).keys
      haveids = ranking_have.collect{|k,v| k }
      @items = Item.find(haveids)
    end
    
    def want
      ranking_want = Want.group(:item_id).order('count_item_id desc').limit(10).count(:item_id).keys
      wantids = ranking_want.collect{|k,v| k }
      @items = Item.find(wantids)
    end

end
