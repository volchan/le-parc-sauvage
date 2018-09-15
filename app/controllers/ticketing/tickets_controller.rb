module Ticketing
  class TicketsController < ApplicationController
    before_action :set_ticket, only: %I[show]
    def create
      @ticket = Ticket.create(
        stripe_token: ticket_params[:stripeToken],
        code: Devise.friendly_token,
        user: current_user,
        item_id: ticket_params[:item_id]
      )
      redirect_to ticketing_thank_you_path(@ticket)
    end

    def thank_you
      @ticket = Ticket.find(params[:ticket_id])
    end

    def show
      respond_to do |format|
        format.pdf { render pdf: "#{current_user.full_name}_#{Date.today.strftime("%d_%m_%Y")}_#{@ticket.item.price_cents}" }
      end
    end

    private

    def ticket_params
      params.permit(:stripeToken, :item_id)
    end

    def set_ticket
      @ticket = Ticket.find(params[:id])
    end
  end
end
