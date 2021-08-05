class Api::V1::RemindersController < ApplicationController

    def index
      @reminders = Reminder.all
      render json: @reminders
    end

    def create
      @reminder = @note.reminders.new(reminder_params)
      if @reminder.save
        render json: @reminder
      else
        render json: {error: 'Error creating reminder'}
      end
    end

    def show
      @reminder = Reminder.find(params[:id])
      render json: @reminder
    end

    def destroy
      @reminder = Reminder.find(params[:id])
      @note = Note.find(reminder.note_id)
      @reminder.destroy
      render json: @reminder
    end

    private
    def reminder_params
        params.require(:reminder).permit(:content, :note_id)
    end
end