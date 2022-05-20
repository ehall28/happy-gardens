class TransactionsController < ApplicationController
    before_action :set_transactions

    def index
    end

    private
    def set_transactions
        @transactions = Transaction.where("seller_id = :user_id OR buyer_id = :user_id", { user_id: current_user.id })
    end
end
