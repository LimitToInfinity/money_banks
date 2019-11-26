class BanksController < ApplicationController

    def index
        @banks = Bank.all
        render json: BankSerializer.new(@banks)
    end

    def create
        @bank = Bank.create(bank_params)
        render json: BankSerializer.new(@bank)
    end

    private

    def bank_params
        params.require(:bank).permit(:name, :money)
    end

end