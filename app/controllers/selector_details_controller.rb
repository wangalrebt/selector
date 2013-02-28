class SelectorDetailsController < ApplicationController
  # GET /selector_details
  # GET /selector_details.json
  def index
    @selector_details = SelectorDetail.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @selector_details }
    end
  end

  # GET /selector_details/1
  # GET /selector_details/1.json
  def show
    @selector_detail = SelectorDetail.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @selector_detail }
    end
  end

  # GET /selector_details/new
  # GET /selector_details/new.json
  def new
    @selector_detail = SelectorDetail.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @selector_detail }
    end
  end

  # GET /selector_details/1/edit
  def edit
    @selector_detail = SelectorDetail.find(params[:id])
  end

  # POST /selector_details
  # POST /selector_details.json
  def create
    @selector_detail = SelectorDetail.new(params[:selector_detail])

    respond_to do |format|
      if @selector_detail.save
        format.html { redirect_to @selector_detail, notice: 'Selector detail was successfully created.' }
        format.json { render json: @selector_detail, status: :created, location: @selector_detail }
      else
        format.html { render action: "new" }
        format.json { render json: @selector_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /selector_details/1
  # PUT /selector_details/1.json
  def update
    @selector_detail = SelectorDetail.find(params[:id])

    respond_to do |format|
      if @selector_detail.update_attributes(params[:selector_detail])
        format.html { redirect_to @selector_detail, notice: 'Selector detail was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @selector_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /selector_details/1
  # DELETE /selector_details/1.json
  def destroy
    @selector_detail = SelectorDetail.find(params[:id])
    @selector_detail.destroy

    respond_to do |format|
      format.html { redirect_to selector_details_url }
      format.json { head :no_content }
    end
  end
end
