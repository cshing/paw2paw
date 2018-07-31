class AvailabilitiesController < ApplicationController
skip_before_action :verify_authenticity_token

  def create
    @sitter = Sitter.find(params[:sitter_id])
    if @sitter 
      params[:dates].each do |date|
        if !Availability.find_by(avail_date: date) 
          avail = Availability.new(avail_date: date, sitter_id: @sitter.id)
          avail.save!
        end
      end
    end
  end

  private

#   def avail_params
#     params.require(:availability).permit(:dates).merge(sitter_id: current_sitter.id)
#   end 

end
