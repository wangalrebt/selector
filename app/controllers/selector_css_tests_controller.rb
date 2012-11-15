class SelectorCssTestsController < ApplicationController
  before_filter :get_url
  # GET /selector_css_tests
  # GET /selector_css_tests.json
  def index
    @selector_css_tests = @selector_url_test.selector_css_tests

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @selector_css_tests }
    end
  end

  # GET /selector_css_tests/1
  # GET /selector_css_tests/1.json
  def show
    @selector_css_test = @selector_url_test.selector_css_tests.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @selector_css_test }
    end
  end

  # GET /selector_css_tests/new
  # GET /selector_css_tests/new.json
  def new
    @selector_url_test = SelectorUrlTest.find(params[:selector_url_test_id])
    @selector_css_test = @selector_url_test.selector_css_tests.build
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @selector_css_test }
    end
  end

  # GET /selector_css_tests/1/edit
  def edit
    @selector_css_test = @selector_url_test.selector_css_tests.find(params[:id])
  end

  # POST /selector_css_tests
  # POST /selector_css_tests.json
  def create
    @selector_css_test = @selector_url_test.selector_css_tests.build(params[:selector_css_test])

    respond_to do |format|
      if @selector_css_test.save
        format.html { redirect_to selector_url_test_url(@selector_url_test), notice: 'Selector css test was successfully created.' }
        format.json { render json: @selector_css_test, status: :created, location: @selector_css_test }
      else
        format.html { render action: "new" }
        format.json { render json: @selector_css_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /selector_css_tests/1
  # PUT /selector_css_tests/1.json
  def update
    @selector_css_test = @selector_url_test.selector_css_tests.find(params[:id])

    respond_to do |format|
      if @selector_css_test.update_attributes(params[:selector_css_test])
        format.html { redirect_to selector_url_test_selector_css_test_url(@selector_url_test), notice: 'Selector css test was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @selector_css_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /selector_css_tests/1
  # DELETE /selector_css_tests/1.json
  def destroy
    @selector_css_test = @selector_url_test.selector_css_tests.find(params[:id])
    @selector_css_test.destroy

    respond_to do |format|
      format.html { redirect_to selector_url_tests_path }
      format.json { head :no_content }
    end
  end

  private
  def get_url
    @selector_url_test = SelectorUrlTest.find(params[:selector_url_test_id])
    @url_address = params[:url]
    @css_selector = params[:cssSelector]
  end
end
