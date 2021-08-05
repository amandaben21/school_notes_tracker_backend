class Api::V1::NotesController < ApplicationController

    def index
        @notes = Note.all
        render json: @notes
    end
    
    def create
        @note = Note.new(note_params)
        if @note.save
            render json: @note
        else
            render json: {error: 'Error creating note'}
        end
    end
    
    def show
        @note = Note.find(params[:id])
        render json: @note
    end
    
    def destroy
        @note = Note.find(params[:id])
        @note.destroy
    end
    
  
    private

    def note_params
        params.require(:note).permit(:subject, :lesson_name, :date, :note_entry)
    end

end
