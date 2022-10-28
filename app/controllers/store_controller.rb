class StoreController < ApplicationController
include EntryCount

  before_action :set_count, only: %i[index]

  def index
    @products = Product.order(:title)
    session[:counter] += 1
    @entry_count = session[:counter]
  end
end
