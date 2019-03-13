require 'selenium-webdriver'
 
browser = Selenium::WebDriver.for :chrome
browser.get "http://normanrschultz.com"
 
# Timeout = 15 sec
wait = Selenium::WebDriver::Wait.new(:timeout => 15)
 
# Find text on the page by regexp
puts "Test Passed: Page 1 Validated" if wait.until {
    /Norman Schultz/.match(browser.page_source)
}
 
browser.quit