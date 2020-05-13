username = "" #put your github username in here!
password = "" #put your github password in here

import sys
from selenium import webdriver
import time

repo = str(sys.argv[1])

browser = webdriver.Chrome("/home/timo/chromedriver") #Change it to the path of the chromedriver
browser.get('https://github.com/login')

user = browser.find_element_by_xpath("//*[@id='login_field']")
user.send_keys(username)

passw = browser.find_element_by_xpath("//*[@id='password']")
passw.send_keys(password)
passw.submit()

browser.get("https://github.com/new")

repofield = browser.find_element_by_xpath("//*[@id='repository_name']")
repofield.send_keys(repo)
repofield.submit()

browser.close()




 
