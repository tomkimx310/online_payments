class PaymentsController < ApplicationController

	def index
		@payments = Payment.all
	end

	def new
		@payment = Payment.new
	end

	def create
		@payment = Payment.create(payment_params)

		if @payment.save
			redirect_to "/payments"
		else
			render "payments"
		end
	end

	private

	def payment_params
		params.require(:payment).permit(:first_name, :last_name, :account_number,
																		:address, :city, :state, :zip, :phone)
	end	

end
