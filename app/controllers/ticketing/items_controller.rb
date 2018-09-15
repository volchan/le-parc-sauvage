module Ticketing
  class ItemsController < ApplicationController
    def index
      @individual_items = Item.individual
      @group_items = Item.grouped
    end
  end
end
