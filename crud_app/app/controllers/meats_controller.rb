class MeatsController < ApplicationController
# p "INSIDE THE CONTROLLER"
# eu_bank = EuCentralBank.new
# Money.default_bank = eu_bank
# money1 = Money.new(10)
# p eu_bank.exchange(100, "CAD", "USD")

  def index
    @meats = Meat.all
  end

  def show
  
    @meat = Meat.find_by_id(params[:id])
 
  end

  def create
  end

  def update
  end

  def destroy
  end

  def edit
  end
end
