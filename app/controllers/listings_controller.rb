class ListingsController < ApplicationController
    before_action :authenticate_user!, except: [:index, :show]
    before_action :set_listings
    before_action :set_listing, only: [:show, :update, :destroy, :edit, :purchase]

    def index
    end

    def show
    end

    # Create a new listing
    def new
        @listing = Listing.new
    end

    # Purchase action, creates transaction, makes listing marked as sold and redirects
    def purchase
        Transaction.create(listing_id: @listing.id, buyer_id: current_user.id, seller_id: @listing.user_id)
        @listing.update!(status: 'sold')
        flash[:notice] = "Successfully purchased #{@listing.listing_type} #{@listing.name}"
        redirect_to '/my-transactions'
    end

    # Creates a new listing and checks if its valid
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

    # Updates a listing
    def update
        begin 
            @listing.update!(listing_params)
            redirect_to @listing
        rescue
            flash.now[:alert] = @listing.errors.full_messages.join('<br>')
            render 'edit'
        end
    end

    # Deletes a listing
    def destroy
        @listing.destroy
        redirect_to '/listings'
    end

    private

    def set_listing
        @listing = Listing.find(params[:id])
    end

    def set_listings
        @listings = Listing.order(:id).where(status: 'available')
    end

    # Strong params for listing
    def listing_params
        return params.require(:listing).permit(:name, :description, :price, :cover_image)
    end
end
