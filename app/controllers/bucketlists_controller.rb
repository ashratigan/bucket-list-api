class BucketlistsController < ProtectedController
  # before_action :authenticate!
  before_action :set_bucketlist, only: [:show, :update, :destroy]

  # GET /bucketlists
  def index
    # @bucketlists = Bucketlist.all
    @bucketlists = current_user.bucketlists

    render json: @bucketlists
  end

  # GET /bucketlists/1
  def show
    render json: @bucketlist
  end

  # POST /bucketlists
   def create
    @bucketlist = current_user.bucketlists.build(bucketlist_params)
    # @bucketlist = Bucketlist.new(bucketlist_params)
    # @bucketlist.user_id = 1
    # @bucketlist.user_id = current_user
    p current_user

    if @bucketlist.save
      render json: @bucketlist, status: :created, location: @bucketlist
    else
      render json: @bucketlist.errors, status: :unprocessable_entity
    end
  end
  # def create
  #   @bucketlist = Bucketlist.new(bucketlist_params)

  #   if @bucketlist.save
  #     render json: @bucketlist, status: :created, location: @bucketlist
  #   else
  #     render json: @bucketlist.errors, status: :unprocessable_entity
  #   end
  # end

  # PATCH/PUT /bucketlists/1
  def update
    if @bucketlist.update(bucketlist_params)
      render json: @bucketlist
    else
      render json: @bucketlist.errors, status: :unprocessable_entity
    end
  end

  # DELETE /bucketlists/1
  def destroy
    @bucketlist.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bucketlist
      @bucketlist = current_user.bucketlists.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def bucketlist_params
      params.require(:bucketlist).permit(:bl_name, :task)
    end
end
