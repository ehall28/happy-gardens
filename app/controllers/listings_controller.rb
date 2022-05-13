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
        begin 
            @listing.update!(listing_params)
            redirect_to @listing
        rescue
            flash.now[:alert] = @listing.errors.full_messages.join('<br>')
            render 'edit'
        end
    end

    def destroy
        @listing.destroy
        redirect_to '/listings'
    end

    private

    def set_listing
        @listing = Listing.find(params[:id])
    end

    def set_listings
        @listings = Listing.order(:id)
    end

    def listing_params
        return params.require(:listing).permit(:name, :description, :price)
    end
end
