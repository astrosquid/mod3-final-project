class Api::V1::CalendarDatesController < ApplicationController

  def index
    @calendar_dates = CalendarDate.all
    render json: @calendar_dates
  end

  def create
    @calendar_date = CalendarDate.find_or_create_by(calendar_date_params)
    if @calendar_date.save
      render json: @calendar_date, status: :accepted
    else
      render json: { message: 'CalDate not accepted.', errors: @calendar_date.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def calendar_date_params
    params.permit(:date)
  end

end
