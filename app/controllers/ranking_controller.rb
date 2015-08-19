class RankingController < ApplicationController

    def have
      haveids = Have.group(:item_id).order('count_item_id desc').limit(10).count(:item_id).keys
      #@items = Item.find(haveids) 配列haveidsの中の順序が維持されない
      @items = haveids.map {|id| Item.find(id)}
    end
    
    def want
      wantids = Want.group(:item_id).order('count_item_id desc').limit(10).count(:item_id).keys
      #@items = Item.find(wantids)
      @items = wantids.map {|id| Item.find(id)}
    end

end
