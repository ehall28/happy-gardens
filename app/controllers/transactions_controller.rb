class TransactionsController < ApplicationController
    before_action :set_transactions

    def index
    end

    private
    def set_transactions
        # Gets all transactions where the seller_id or buyer_id is the current users id
        @transactions = Transaction.where("seller_id = :user_id OR buyer_id = :user_id", { user_id: current_user.id })
    end
end
