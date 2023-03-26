Feature:Admin

@smoke
Scenario: Successfully Login with valid credential
  Given  User Launch Chrome browser
  When   User open url "https://admin-demo.nopcommerce.com/login"
  And   User enter Email as "admin@yourstore.com" and password as "admin"
  And   click on Login
  Then   Page title should be "Dashboard / nopCommerce administration"
  And   close browser


@regression
Scenario Outline: Login Data Driven
  Given  User Launch Chrome browser
  When   User open url "https://admin-demo.nopcommerce.com/login"
  And   User enter Email as "<email>" and password as "<password>"
  And   click on Login
  Then   Page title should be "Dashboard / nopCommerce administration"
  And   close browser
  
  Examples:
  |email               |password    |
  |admin@yourstore.com |admin       |
  |admin@yourstore.com |admin123    |
  |admin@yourstore.com |admin123    |
  |admin@yourstore.com |admin123    |
  |admin@yourstore.com |admin123    |
  |admin@yourstore.com |admin123    |
  
  
  

  


