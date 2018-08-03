class SittersController < ApplicationController
  # I want to be able to use the user table's info to get the avatar
  # @users = User.all.order(created_at: :desc)
  
  def index
    @sitters = Sitter.all.order(created_at: :desc)
    @lat_lng = [params[:lat],params[:lng]].join(",")
    puts 'sitter controller line12', @lat_lng

    #if deployed, can get user's current location geocoded by request.remote_ip.
    #puts 'sitter controller line 7', request.remote_ip
  end

  def show
    @user = current_sitter
    avails = Availability.where(sitter_id: params[:id])
    @dates = Array.new
    avails.each do |date|
      @dates.push(date.avail_date).sort!
    end
    @sitter = Sitter.find params[:id]
  end

  def new
    @sitter = Sitter.new
    @user = current_user
  end

  def create
    @user = current_user
    @sitter = Sitter.new(sitter_params)
    @sitter.user_id = @user.id
    #to add img field for house pics
    
    if @sitter.save
      redirect_to sitter_path(@sitter.id), notice: 'New sitter created!'
    else
      render :new
    end
  end

  def edit 
    @user = current_user
    if current_sitter 
      @sitter = Sitter.find(params[:id])
    end
  end

  def update
    @sitter = Sitter.find(params[:id])
    if @sitter.update(sitter_params)
      redirect_to @sitter
    else
      render :edit
    end 
  end


  private

  def sitter_params
    params.require(:sitter).permit(
      :name,
      :address,
      :summary,
      :rules,
      :price
    )
  end

end
