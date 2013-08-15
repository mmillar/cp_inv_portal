class StylesheetsController < ApplicationController

  def theme
    respond_to do |format|
      format.css
    end
  end
end
