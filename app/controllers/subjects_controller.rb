class SubjectsController < ApplicationController
	before_action :get_subject, only:[:show,:edit,:update,:destroy]
	def new

		@subject = Subject.new
	end

	def index
		if params[:search].blank?
			@subjects = Subject.all.order("name ASC").limit(21)
		else
			@query = params[:search]
			@subjects = Subject.search(params[:search])
		end
	end

	def show
	end

	def create
		@subject = Subject.new(subject_params)
		if @subject.save
			redirect_to subjects_path,notice:"Successfully added Subject details!"
		else
			render('new')
		end
	end

	def edit
	end

	def update
		if @subject.update(subject_params)
			redirect_to subjects_path,notice:"Successfully updated Subject details!"
		else
			render('edit')
		end
	end

	def destroy
		@subject.destroy
		redirect_to subjects_path,notice:"Successfully Destroyed Subject details!"
	end

	private

		def subject_params
			params.require(:subject).permit(:name)
		end

		def get_subject
			@subject = Subject.find(params[:id])
		end

end
