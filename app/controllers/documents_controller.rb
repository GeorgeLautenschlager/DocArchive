class DocumentsController < ApplicationController
  # GET /documents
  # GET /documents.json
  def index
    @document = Document.first
    @rows = @document.rows
  end

  # GET /documents/1
  # GET /documents/1.json
  def show
    @document = Document.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @document }
    end
  end

  # GET /documents/new
  # GET /documents/new.json
  def new
    @document = Document.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @document }
    end
  end

  # GET /documents/1/edit
  def edit
    @document = Document.find(params[:id])
  end

  # POST /documents
  # POST /documents.json
  def create
    @document = Document.new(params[:document])

    respond_to do |format|
      if @document.save
        format.html { redirect_to @document, notice: 'Document was successfully created.' }
        format.json { render json: @document, status: :created, location: @document }
      else
        format.html { render action: "new" }
        format.json { render json: @document.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /documents/1
  # PUT /documents/1.json
  def update
    @document = Document.find(params[:id])

    respond_to do |format|
      if @document.update_attributes(params[:document])
        format.html { redirect_to @document, notice: 'Document was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @document.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /documents/1
  # DELETE /documents/1.json
  def destroy
    @document = Document.find(params[:id])
    @document.destroy

    respond_to do |format|
      format.html { redirect_to documents_url }
      format.json { head :no_content }
    end
  end

  def search
    @document = Document.first

    # binding.pry

    @rows = @document.rows

    # Sex filter
    if params[:sex] == "Any"
      # No filter
    else
      @rows = @rows.where(sex: params[:sex])
    end

    # Age filter
    if params[:age] == "Any"
      # No filter
    else
      @rows = @rows.where(search_age: params[:age])
    end

    # Status filter
    if params[:outcome] == "Any"
      # No filter
    else
      @rows = @rows.where(search_outcome: params[:outcome])
    end

    # Nation filter
    if params[:nation] == "Any"
      # No filter
    else
      @rows = @rows.where(search_nation: params[:nation])
    end

    # Reason for Being in Freetown filter
    if params[:purpose_brought] == "Any"
      # No filter
    else
      @rows = @rows.where(search_reason: params[:purpose_brought])
    end
      
    # binding.pry

    render "index"
  end
end
