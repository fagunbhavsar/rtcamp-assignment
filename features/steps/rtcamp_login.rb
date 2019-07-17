Given(/^I open rtCamp site$/) do
    visit(RtCampPage)
end

Then(/^I click on activity button$/) do
    on(RtCampPage).open_rtcamp_page
end

And(/^I enter username$/) do
    on(RtCampPage).enter_username(@data["username"])
end

And(/^I enter password$/) do
    on(RtCampPage).enter_password(@data["password"])
end

And(/^I click on log in button$/) do
    on(RtCampPage).click_login
end

Then(/^I see rtPanel banner$/) do
    on(RtCampPage).validate_rt_banner
end

And(/^I see profile name and logout button$/) do
    on(RtCampPage).validate_profile
end

And(/^I enter incorrect password$/) do
    on(RtCampPage).invalid_password(@data["password1"])
end

Then(/^I see error message related to incorrect password$/) do
  actual = on(RtCampPage).invalid_password_error
  expected = @data["error1"]
end

And(/^I enter incorrect username$/) do
  on(RtCampPage).invalid_username(@data["username2"])
end

Then(/^I see error message related to incorrect username$/) do
  actual = on(RtCampPage).invalid_username_error
  expected = @data["error2"]
end