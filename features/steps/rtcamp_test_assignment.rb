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

Then(/^I see Activity label with text field below it$/) do
  pending
end

And(/^I click in text field$/) do
  pending
end

And(/^I see button with attach media tool tip$/) do
  pending
end

And(/^I click on attach media button$/) do
  pending
end

And(/^I select a file from local system$/) do
  pending
end

And(/^I see uploaded image below text field$/) do
  pending
end

And(/^I select post privacy value as Private$/) do
  pending
end

Then(/^I click on Post Update$/) do
  pending
end

And(/^I see newly uploaded media post$/) do
  pending
end

Then(/^I click on profile name$/) do
  pending
end

Then(/^I click on media link$/) do
  pending
end

Then(/^I click on albums link$/) do
  pending
end

Then(/^I click on options button$/) do
  pending
end

Then(/^I click on add album link$/) do
  pending
end

And(/^I enter album title$/) do
  pending
end

And(/^I click on create album button$/) do
  pending
end

Then(/^I see album created successfully message$/) do
  pending
end

And(/^I close the create new album popup$/) do
  pending
end

Then(/^I see newly create album name against album label$/) do
  pending
end

And(/^I see privacy as Private$/) do
  pending
end

Then(/^I click on select your files$/) do
  pending
end

And(/^I select five media files$/) do
  pending
end

And(/^I click on start upload$/) do
  pending
end

And(/^I click on Albums link$/) do
  pending
end

Then(/^I see newly created album$/) do
  pending
end