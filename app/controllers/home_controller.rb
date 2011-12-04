class HomeController < ApplicationController
  # GET /home
  # GET /home.json
  def index
    #@home = Welcome.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @welcomes }
    end
  end

  # GET /home/1
  # GET /home/1.json
  def show
    @welcome = Welcome.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @welcome }
    end
  end

  # GET /home/new
  # GET /home/new.json
  def new
    @welcome = Welcome.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @welcome }
    end
  end

  # GET /home/1/edit
  def edit
    @welcome = Welcome.find(params[:id])
  end

  # POST /home
  # POST /home.json
  def create
    @welcome = Welcome.new(params[:welcome])

    respond_to do |format|
      if @welcome.save
        format.html { redirect_to @welcome, notice: 'Welcome was successfully created.' }
        format.json { render json: @welcome, status: :created, location: @welcome }
      else
        format.html { render action: "new" }
        format.json { render json: @welcome.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /home/1
  # PUT /home/1.json
  def update
    @welcome = Welcome.find(params[:id])

    respond_to do |format|
      if @welcome.update_attributes(params[:welcome])
        format.html { redirect_to @welcome, notice: 'Welcome was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @welcome.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /home/1
  # DELETE /home/1.json
  def destroy
    @welcome = Welcome.find(params[:id])
    @welcome.destroy

    respond_to do |format|
      format.html { redirect_to welcomes_url }
      format.json { head :ok }
    end
  end
end
