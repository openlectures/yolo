class SeabTopicsController < ApplicationController
  before_action :set_seab_topic, only: [:show, :edit, :update, :destroy]
  respond_to :json
  # GET /seab_topics
  # GET /seab_topics.json
  def index
    respond_with SeabTopic.all
  end

  # GET /seab_topics/1
  # GET /seab_topics/1.json
  def show
  end

  # GET /seab_topics/new
  def new
    @seab_topic = SeabTopic.new
  end

  # GET /seab_topics/1/edit
  def edit
  end

  # POST /seab_topics
  # POST /seab_topics.json
  def create
    @seab_topic = SeabTopic.new(seab_topic_params)

    respond_to do |format|
      if @seab_topic.save
        format.html { redirect_to @seab_topic, notice: 'Seab topic was successfully created.' }
        format.json { render action: 'show', status: :created, location: @seab_topic }
      else
        format.html { render action: 'new' }
        format.json { render json: @seab_topic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /seab_topics/1
  # PATCH/PUT /seab_topics/1.json
  def update
    respond_to do |format|
      if @seab_topic.update(seab_topic_params)
        format.html { redirect_to @seab_topic, notice: 'Seab topic was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @seab_topic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /seab_topics/1
  # DELETE /seab_topics/1.json
  def destroy
    @seab_topic.destroy
    respond_to do |format|
      format.html { redirect_to seab_topics_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_seab_topic
      @seab_topic = SeabTopic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def seab_topic_params
      params.require(:seab_topic).permit(:topic, :description, :subject_id)
    end
end
