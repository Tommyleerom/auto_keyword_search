module Request

require 'selenium-webdriver'

  def grabber(log, pas, que)

    driver = Selenium::WebDriver.for :chrome
    driver.navigate.to "http://www.horror.com/forum/"

    driver.find_element(name: 'vb_login_username').send_keys(log)
    password = driver.find_element(name: 'vb_login_password')
    password.send_keys(pas)
    password.submit

    wait = Selenium::WebDriver::Wait.new(timeout: 10)
    wait.until { driver.find_element(id: 'navbar_search') }
    driver.find_element(id: 'navbar_search').click
    query = driver.find_element(name: 'query')
    query.send_keys(que)
    query.submit

    arr = []
    info1 = wait.until { driver.find_elements(:xpath, '//*[@id="threadslist"]/tbody/tr/td').each {|i| arr << i.text}  }

    # title = []

    # info1.each do |i|
    #   title << i.find_element(:class, 'alt1').text
    # end

    driver.quit
    #debugger
    arr

  end

  private

  def scraper


  end




end
