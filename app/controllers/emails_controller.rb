class EmailsController < ApplicationController
  def index
    @email = Email.all
  end

  def show
    @email = Email.find(params[:id])
  end

  def create
    @book = Email.create(object: params[:object], body: params[:body])

    respond_to do |format|
      format.html { redirect_to emails_path }
      format.js { }
    end
  end

  def new
  end

  def edit
  end
end
