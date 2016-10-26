class NotesController < ApplicationController

	def index
		@notes = Note.all
		@note = Note.new
	end

	def create
		@note = Note.new( notes_params )

		respond_to do |format|
			if @note.save
				format.html {redirect_to notes_path}
				format.js {}
				format.json {render json: @note, status: :created, location: @note}
			else
				format.html { redirect_to notes_path }
				format.json { render json: @note.errors, status: :unprocessable_entity }
			end
		end
	end

	def update
		@note = Note.find(params[:id])
		respond_to do |format|
			if @note.update( update_params )
				format.html {redirect_to notes_path}
				format.json { head :no_content }
				format.js { render :layout => false }
			else
				format.html { redirect_to notes_path, errors: @note.errors.full_messages }
				format.json { render json: @note.errors, status: :unprocessable_entity }
			end
		end
	end

	def destroy
		Note.find(params[:id]).destroy
		respond_to do |format|
			format.html { redirect_to notes_path }
			format.json { head :no_content }
			format.js {render :layout => false }
		end
	end

	private
		def notes_params
			params.require(:note).permit(:title)
		end
		def update_params
			params.require(:note).permit(:title, :description)
		end

end
