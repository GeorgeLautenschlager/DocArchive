class DocumentsController < ApplicationController
  # GET /documents
  # GET /documents.json
  def index
    @document = Document.first

    if @document 
      @rows = @document.rows
      @rows = @rows.sort_by{|r| r.page}
    end

    @sex_search_terms = []
    @age_search_terms = []
    @nation_search_terms = []
    @outcome_search_terms = [] 
    @reason_search_terms = []
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

    @sex_search_terms = @age_search_terms = @nation_search_terms = @outcome_search_terms = @reason_search_terms = []

    @sex_search_terms = params[:sex] if params[:sex]
    @age_search_terms = params[:age] if params[:age]
    @nation_search_terms = params[:nation] if params[:nation]
    @outcome_search_terms = params[:outcome] if params[:outcome]
    @reason_search_terms = params[:reason] if params[:reason]
    filter = nil

    @rows = @document.rows

    # Sex filter
    if params[:sex]
      filter = []

      for term in params[:sex]
        term_result = []

        for row in @rows 
          if row.sex == term
            term_result << row
          end
        end

        filter = filter + term_result
      end

      @rows = filter
      filter = []

    else
      # no filtering
    end

    # age filter
    if params[:age]
      filter = []

      for term in params[:age]
        term_result = []

        for row in @rows 
          if row.search_age == term
            term_result << row
          end
        end

        filter = filter + term_result
      end

      @rows = filter
      filter = []

    else
      # no filtering
    end

    # nation filter
    if params[:nation]
      filter = []

      for term in params[:nation]
        term_result = []

        for row in @rows 
          if row.search_nation == term
            term_result << row
          end
        end

        filter = filter + term_result
      end

      @rows = filter
      filter = []

    else
      # no filtering
    end

    # outcome filter
    if params[:outcome]
      filter = []

      for term in params[:outcome]
        term_result = []

        for row in @rows 
          if row.search_outcome == term
            term_result << row
          end
        end

        filter = filter + term_result
      end

      @rows = filter
      filter = []

    else
      # no filtering
    end

    # age filter
    if params[:reason]
      filter = []

      for term in params[:reason]
        term_result = []

        for row in @rows 
          if row.search_reason == term
            term_result << row
          end
        end

        filter = filter + term_result
      end

      @rows = filter
      filter = []

    else
      # no filtering
    end

    @rows = @rows.sort_by{|r| r.page}
    
    render "index"
  end
end
