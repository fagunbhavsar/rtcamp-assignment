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

And(/^I enter incorrect password with correct username$/) do
  pending
end

Then(/^I see error message related to incorrect password$/) do
  pending
end

And(/^I enter incorrect username with correct password$/) do
  pending
end

Then(/^I see error message related to incorrect username$/) do
  pending
end