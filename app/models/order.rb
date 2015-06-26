class Order < ActiveRecord::Base
	belongs_to :watch
	belongs_to :user

	def save_with_payment
	
			Stripe.api_key = Rails.application.secrets.stripe_sk

			Stripe::Charge.create(
			  :amount => amount,
			  :currency => "gbp",
			  :source => stripe_token, # obtained with Stripe.js
			  :description => "#{user.email} charged for #{watch.name}."
			)
			self.save
		rescue Stripe::CardError => e
		  # Since it's a decline, Stripe::CardError will be caught
		  body = e.json_body
		  err  = body[:error]	

		  errors.add :base, err[:message]

	end

	def amount
		watch.price_in_pence
	end

	def total
		watch.price
	end

	def sku
		id
	end


end
