class Api::V1::RemindersController < ApplicationController

    def index
      @reminders = Reminder.all
      render json: @reminders
    end

    def create
      @reminder = Reminder.new(reminder_params)
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
      @reminder.destroy
    end

    private
    def reminder_params
        params.require(:reminder).permit(:content, :note_id)
    end
end