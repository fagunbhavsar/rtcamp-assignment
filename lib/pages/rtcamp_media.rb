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

  def validate_uploaded_media_file
    @browser.element(:class => 'plupload_file_name', :title => 'file1.jpg').exist?
  end

  def validate_post_privacy
    @browser.element(:id => 'rtSelectPrivacy', :visual_text => 'Private').exist?
  end

  def submit_post
    @browser.element(:id => 'aw-whats-new-submit').click
  end

   def click_profile_name
     #require"pry";binding.pry
     @browser.element(:href => 'https://qa.rtcamp.net/members/demo/', :visible_text => 'demo').click
   end

  def click_media_tab
    #require"pry";binding.pry
    @browser.element(:id => 'user-media').click
  end

  def validate_added_media_file
    @browser.element(:class => 'rtmedia-list-item', :title => 'file1.jpg').exist?
  end

end
