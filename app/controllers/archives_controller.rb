class ArchivesController < ApplicationController
  def index
    @conferences = @limited_conferences.where('date < ?',Time.now).all
    @user = current_user

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @conferences }
    end
  end

end
