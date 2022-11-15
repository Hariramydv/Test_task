class DiscussionTopicsController < ApplicationController
  before_action :set_discussion_topic, only: %i[ show edit update destroy ]

  # GET /discussion_topics or /discussion_topics.json
  def index
    @discussion_topics = DiscussionTopic.all
  end

  # GET /discussion_topics/1 or /discussion_topics/1.json
  def show
  end

  # GET /discussion_topics/new
  def new
    @campaign = Campaign.find_by(params[:campaign_id])
    @discussion_topic = @campaign.discussion_topics.new
  end

  # GET /discussion_topics/1/edit
  def edit
  end

  # POST /discussion_topics or /discussion_topics.json
  def create
    @campaign = Campaign.find_by(params[:campaign_id])
    @discussion_topic = @campaign.discussion_topics.create(discussion_topic_params)
  
    respond_to do |format|
     # if @discussion_topic.save
        format.html { redirect_to campaign_path(@campaign), notice: "Discussion topic was successfully created." }
        format.json { render :show, status: :created, location: @discussion_topic }
     # else
       # format.html { render :new, status: :unprocessable_entity }
       # format.json { render json: @discussion_topic.errors, status: :unprocessable_entity }
      #end
    end
  end

  # PATCH/PUT /discussion_topics/1 or /discussion_topics/1.json
  def update
    respond_to do |format|
      if @discussion_topic.update(discussion_topic_params)
        format.html { redirect_to discussion_topic_url(@discussion_topic), notice: "Discussion topic was successfully updated." }
        format.json { render :show, status: :ok, location: @discussion_topic }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @discussion_topic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /discussion_topics/1 or /discussion_topics/1.json
  def destroy
    @discussion_topic.destroy

    respond_to do |format|
      format.html { redirect_to discussion_topics_url, notice: "Discussion topic was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_discussion_topic
      @discussion_topic = DiscussionTopic.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def discussion_topic_params
      params.require(:discussion_topic).permit(:title, :user_id, :campaign_id)
    end
end
