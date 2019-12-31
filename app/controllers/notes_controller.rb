class NotesController < ApplicationController
  def index
    notes = Note.all 
    render json: notes
  end

  def create
    note = Note.create(title: params[:title], content: params[:content], user_id: params[:user_id])
    render json: note
  end

  def show
    note = Note.find(params[:id])
    render json: note
  end

  def destroy
    Note.delete(params[:id])
  end

end
