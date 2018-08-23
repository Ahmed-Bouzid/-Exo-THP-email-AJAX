class EmailsController < ApplicationController


  def create
    @email = Email.create(params_email)

    respond_to do |format|
      format.js
      
    end
  end


  def index
    @email = Email.new
    @emails = Email.all

  end

  def show
    @email = Email.new


  end

  def delete
    @email = Email.delete

     respond_to do |format|
      format.js 
    end

  end



  private




  def params_email
    params.require(:email).permit(:title, :content)
  end


end