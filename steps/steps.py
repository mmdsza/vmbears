from robot.libraries.BuiltIn import BuiltIn

@Given('the user is on the main page')
def given_user_on_main_page():
    url = "https://sampleapp.tricentis.com/101/app.php"
    BuiltIn().run_keyword('Open Browser And Navigate To', url)

@When('the user clicks "{link_text}"')
def when_user_clicks_link(link_text):
    BuiltIn().run_keyword('Click Link And Verify Page', link_text, link_text)

@Then('the page should contain "{expected_text}"')
def then_page_should_contain(expected_text):
    BuiltIn().run_keyword('Page Should Contain', expected_text)
