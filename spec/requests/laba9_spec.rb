# Generated by Selenium IDE
require 'selenium-webdriver'
require 'json'

describe 'Lab9' do
    before(:each) do
      @driver = Selenium::WebDriver.for :chrome
      @vars = {}
    end
    after(:each) do
      @driver.quit
    end
    it 'lab9' do
      @driver.get('http://localhost:3000/calc/input')
      @driver.find_element(:id, 'v1').click
      @driver.find_element(:id, 'v1').send_keys(2)
      @driver.find_element(:id, 'v2').click
      @driver.find_element(:id, 'v2').send_keys(3)
      @driver.find_element(:name, 'commit').click
      sleep 5
      expect(@driver.find_element(:id, 'res1').text).to eq('1')
      expect(@driver.find_element(:id, 'res2').text).to eq('6')
    end
  end