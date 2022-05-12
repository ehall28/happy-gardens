class ListingsController < ApplicationController
    before_action :authenticate_user!, except: [:index, :show]
    before_action :set_listings
    before_action :set_listing, only: [:show, :update, :destroy, :edit]



    def index
    end

    def show
    end

    def new
        @listing = Listing.new
    end

    def create
        user = User.find(current_user.id)
        @listing = user.listings.create(listing_params)

        if @listing.valid?
            redirect_to @listing
        else
            flash.now[:alert] = @listing.errors.full_messages.join('<br>')
            render 'new'
        end

    end

    def edit
    end

    def update
    end

    def destroy
    end

    private

    def set_listing
        @listing = Listing.find(params[:id])
    end

    def listing_params
        return params.require(:listing).permit(:name, :description, :price)
    end

    def set_listings
        @listings = Listing.order(:id)
    end
    
end
