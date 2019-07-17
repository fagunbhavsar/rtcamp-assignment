class RtloginPage < Page
      page_url      base_url

  def open_rtcamp_page
      @browser.element(:link => 'Activity').click
  end

  def activity_rtcamp_page
      @browser.element(:class => 'entry-title', :text => 'Activity').wait_until_present
  end

  def enter_credentials
      @browser.element(:id => 'bp-login-widget-user-login').set('demo')
      @browser.element(:id => 'bp-login-widget-user-pass').set('demo')
  end

  def click_login
      @browser.element(:id => 'bp-login-widget-submit').click
      @browser.element(:class => 'bp-login-widget-user-link', :link => 'demo').wait_until_present
  end


end
