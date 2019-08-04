class RtCampMediaPage < Page
      page_url          base_url

  def validate_activity_banner
      @browser.element(:class => 'entry-title', :visual_text => 'Activity').exist?
      @browser.element(:id => 'whats-new').exist?
  end

  def click_on_text_field
     @browser.element(:id => 'whats-new').click
  end

  def validate_upload_button
    @browser.element(:id => 'rtmedia-add-media-button-post-update').exist?
  end

  def click_on_upload_button
    @browser.element(:id => 'rtmedia-add-media-button-post-update').click
  end

  def upload_media_file(filename)
    #require"pry";binding.pry
    @browser.file_field.set(filename)
  end


end
