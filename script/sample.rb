#!/usr/local/bin/ruby

require 'selenium-webdriver'

# 日付取得
datetime_str = DateTime.now.strftime("%Y%m%d%H%M%S")
# 画像ディレクトリ
image_path = "./screenshot/"
# ディレクトリを作成
FileUtils.mkdir_p(image_path) unless FileTest.exist?(image_path)
# seleniumの起動~スクショ撮影
driver = Selenium::WebDriver.for :remote, url: 'http://selenium-hub:4444/wd/hub', desired_capabilities: :chrome
url = 'https://www.yahoo.co.jp/'
driver.get url
driver.save_screenshot("#{image_path}/#{datetime_str}.png")
driver.quit
