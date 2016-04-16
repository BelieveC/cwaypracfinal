class AboutsController < ApplicationController

	def index
		@practicals = Practical.all.order("created_at DESC").limit(3)
		@examnotes = Examnote.all.order("created_at DESC").limit(3)
		@assignments = Assignment.all.order("created_at DESC").limit(3)
	end
end
