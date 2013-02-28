class SelectorUrlTestsController < ApplicationController
  before_filter :get_url_css
  # GET /selector_url_tests
  # GET /selector_url_tests.json
  def index
    @selector_url_tests = SelectorUrlTest.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @selector_url_tests }
    end
  end

  # GET /selector_url_tests/1
  # GET /selector_url_tests/1.json
  def show
    @selector_url_test = SelectorUrlTest.find(params[:id])
    @url_address = params[:url]
    @css_selector = params[:cssSelector]

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @selector_url_test }
    end
  end

  # GET /selector_url_tests/new
  # GET /selector_url_tests/new.json
  def new
    @selector_url_test = SelectorUrlTest.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @selector_url_test }
    end
  end

  # GET /selector_url_tests/1/edit
  def edit
    @selector_url_test = SelectorUrlTest.find(params[:id])
  end

  # POST /selector_url_tests
  # POST /selector_url_tests.json
  def create
    @selector_url_test = SelectorUrlTest.new(params[:selector_url_test])

    respond_to do |format|
      if @selector_url_test.save
        format.html { redirect_to @selector_url_test, notice: 'Selector url test was successfully created.' }
        format.json { render json: @selector_url_test, status: :created, location: @selector_url_test }
      else
        format.html { render action: "new" }
        format.json { render json: @selector_url_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /selector_url_tests/1
  # PUT /selector_url_tests/1.json
  def update
    @selector_url_test = SelectorUrlTest.find(params[:id])

    respond_to do |format|
      if @selector_url_test.update_attributes(params[:selector_url_test])
        format.html { redirect_to @selector_url_test, notice: 'Selector url test was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @selector_url_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /selector_url_tests/1
  # DELETE /selector_url_tests/1.json
  def destroy
    @selector_url_test = SelectorUrlTest.find(params[:id])
    @selector_url_test.destroy

    respond_to do |format|
      format.html { redirect_to selector_url_tests_url }
      format.json { head :no_content }
    end
  end

  def begin_work
    @selector_url_test = SelectorUrlTest.begin

    respond_to do |format|
      if @selector_url_test
        format.html {redirect_to selector_details_url, notice: 'Save successful'}
        format.json {head :no_content}
      end
    end
  end

  private
  def get_url_css
    @url_address = params[:url]
    @css_selector = params[:cssSelector]
  end

end
