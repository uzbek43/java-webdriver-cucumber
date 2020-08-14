@predefined
Feature: Smoke steps



  @Behavior
  Scenario: responsive UI
    Given I open url "https://skryabin.com/market/quote.html"
    When I resize window to 1280 and 1176
    Then element with xpath "//b[@id='currentDate']" should be displayed
    When I resize window to 818 and 1176
    Then element with xpath "//b[@id='currentDate']" should be displayed
    When I resize window to 713 and 1176
    Then element with xpath "//b[@id='currentDate']" should not be displayed

  @Validate1
  Scenario: Fill out and validate “Username” field
    Given I open url "https://skryabin.com/market/quote.html"
    When I type "a" into element with xpath "//input[@name='username']"
    And I click on element with xpath "//button[@id='formSubmit']"
    Then element with xpath "//label[@id='username-error']" should be displayed
    And I type "b" into element with xpath "//input[@name='username']"
    Then element with xpath "//label[@id='username-error']" should not be displayed

  @Validate2
  Scenario: Validate “Email” field behavior
    Given I open url "https://skryabin.com/market/quote.html"
    When I type "324214" into element with xpath "//input[@name='email']"
    And I click on element with xpath "//button[@id='formSubmit']"
    Then element with xpath "//label[@id='email-error']" should be displayed
    And I clear element with xpath "//input[@name='email']"
    And I type "1234@gmail.com" into element with xpath "//input[@name='email']"
    Then element with xpath "//label[@id='email-error']" should not be displayed


  @Validate3
  Scenario: Fill out and validate “Password” set of fields
    Given I open url "https://skryabin.com/market/quote.html"
    When I type "12345" into element with xpath "//input[@id='password']"
    Then element with xpath "//input[@id='confirmPassword']" should be enabled
    And I clear element with xpath "//input[@id='password']"
    Then element with xpath "//input[@id='confirmPassword']" should be disabled
    When I type "12345" into element with xpath "//input[@id='password']"
    And I type "56789" into element with xpath "//input[@id='confirmPassword']"
    And I click on element with xpath "//button[@id='formSubmit']"
    Then element with xpath "//label[@id='confirmPassword-error']" should be displayed
    Then I clear element with xpath "//input[@id='confirmPassword']"
    And I type "12345" into element with xpath "//input[@id='confirmPassword']"
    Then element with xpath "//label[@id='confirmPassword-error']" should not be displayed


  @Validate4
  Scenario: "Username" field behavior
    Given I open url "https://skryabin.com/market/quote.html"
    When I click on element with xpath "//input[@id='name']"
    Then element with xpath "//div[@role='dialog']" should be displayed
    Then I type "Eugene" into element with xpath "//input[@id='firstName']"
    And I type "Genadyevich" into element with xpath "//input[@id='middleName']"
    And I type "Kroshin" into element with xpath "//input[@id='lastName']"
    Then I click on element with xpath "//span[contains(text(),'Save')]"
    Then element with xpath "//input[@value='Eugene Genadyevich Kroshin']" should be displayed


    @Validate5
    Scenario: APP is required to submit the form
      Given I open url "https://skryabin.com/market/quote.html"
      When I click on element with xpath "//button[@id='formSubmit']"
      Then element with xpath "//label[@id='agreedToPrivacyPolicy-error']" should be displayed
      When I click on element with xpath "//input[@name='agreedToPrivacyPolicy']"
      And I click on element with xpath "//button[@id='formSubmit']"
      Then element with xpath "//label[@id='agreedToPrivacyPolicy-error']" should not be displayed


      @Validate6
      Scenario: Submit the form
        Given I open url "https://skryabin.com/market/quote.html"
        When I type "Atropos43" into element with xpath "//input[@name='username']"
        And I type "12345@gmail.com" into element with xpath "//input[@name='email']"
        And I type "12345" into element with xpath "//input[@id='password']"
        And I type "12345" into element with xpath "//input[@id='confirmPassword']"
        Then I click on element with xpath "//input[@id='name']"
        And I type "Eugene" into element with xpath "//input[@id='firstName']"
        And I type "Genadyevich" into element with xpath "//input[@id='middleName']"
        And I type "Kroshin" into element with xpath "//input[@id='lastName']"
        Then I click on element with xpath "//span[contains(text(),'Save')]"
        And I click on element with xpath "//input[@name='agreedToPrivacyPolicy']"
        And  I click on element with xpath "//button[@id='formSubmit']"
        Then element with xpath "//div[@class='well form-container container-fluid']" should be displayed
        Then element with xpath "//span[contains(text(),'Password')]" should be displayed








    
    









            








        







































      
