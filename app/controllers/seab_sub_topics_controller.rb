class SeabSubTopicsController < ApplicationController
  before_action :set_seab_sub_topic, only: [:show, :edit, :update, :destroy]

  # GET /seab_sub_topics
  # GET /seab_sub_topics.json
  def index
    @seab_sub_topics = SeabSubTopic.all
  end

  # GET /seab_sub_topics/1
  # GET /seab_sub_topics/1.json
  def show
  end

  # GET /seab_sub_topics/new
  def new
    @seab_sub_topic = SeabSubTopic.new
  end

  # GET /seab_sub_topics/1/edit
  def edit
  end

  # POST /seab_sub_topics
  # POST /seab_sub_topics.json
  def create
    @seab_sub_topic = SeabSubTopic.new(seab_sub_topic_params)

    respond_to do |format|
      if @seab_sub_topic.save
        format.html { redirect_to @seab_sub_topic, notice: 'Seab sub topic was successfully created.' }
        format.json { render action: 'show', status: :created, location: @seab_sub_topic }
      else
        format.html { render action: 'new' }
        format.json { render json: @seab_sub_topic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /seab_sub_topics/1
  # PATCH/PUT /seab_sub_topics/1.json
  def update
    respond_to do |format|
      if @seab_sub_topic.update(seab_sub_topic_params)
        format.html { redirect_to @seab_sub_topic, notice: 'Seab sub topic was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @seab_sub_topic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /seab_sub_topics/1
  # DELETE /seab_sub_topics/1.json
  def destroy
    @seab_sub_topic.destroy
    respond_to do |format|
      format.html { redirect_to seab_sub_topics_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_seab_sub_topic
      @seab_sub_topic = SeabSubTopic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def seab_sub_topic_params
      params.require(:seab_sub_topic).permit(:topic, :seab_topic_id)
    end
end
