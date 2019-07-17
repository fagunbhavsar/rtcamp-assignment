class RtCampPage < Page
      page_url      base_url

  def open_rtcamp_page
      @browser.element(:visible_text => 'Activity').click
      @browser.element(:class => 'entry-title', :visible_text => 'Activity').wait_until_present
  end

  def enter_username(username)
      #require"pry";binding.pry
      @browser.element(:id => 'bp-login-widget-user-login').send_keys(username)
  end

  def enter_password(password)
    @browser.element(:id => 'bp-login-widget-user-pass').send_keys(password)
  end

  def click_login
      @browser.element(:id => 'bp-login-widget-submit').click
  end

  def validate_rt_banner
      @browser.element(:src => 'https://qa.rtcamp.net/wp-content/themes/rtpanel-exhibition/images/sitelogo.png').wait_until_present
  end

  def validate_profile
    @browser.element(:class => 'bp-login-widget-user-link', :link => 'demo').exist?
    @browser.element(:class => 'logout').exist?
  end

end
