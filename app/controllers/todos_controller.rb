class TodosController < ApplicationController
  before_action :set_todo, only: %i[ edit update destroy ]

  # GET /todos or /todos.json
  def index
    @todos = Todo.all
    @todo = Todo.new
  end

  # GET /todos/1/edit
  def edit
  end

  # POST /todos or /todos.json
  def create
    @todo = Todo.new(todo_params)
    @todos = Todo.all

    respond_to do |format|
      if @todo.save
        format.turbo_stream { flash.now[:notice] = "Todo was successfully created." }
        format.html { redirect_to todos_url, notice: "Todo was successfully created." }
      else
        format.html { render :index, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /todos/1 or /todos/1.json
  def update
    respond_to do |format|
      if @todo.update(todo_params)
        format.turbo_stream { flash.now[:notice] = "Todo was successfully updated." }
        format.html { redirect_to todo_url(@todo), notice: "Todo was successfully updated." }
      else
        format.html { render :index, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /todos/1 or /todos/1.json
  def destroy
    @todo.destroy!

    respond_to do |format|
      format.turbo_stream { flash.now[:notice] = "Todo was successfully destroyed." }
      format.html { redirect_to todos_url, status: :see_other, notice: "Todo was successfully destroyed." }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_todo
      @todo = Todo.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def todo_params
      params.expect(todo: [ :name, :status ])
    end
end
