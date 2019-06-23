from selenium import webdriver
from selenium.webdriver.support.ui import Select
driver = webdriver.Chrome("C:/Users/hrithik chinu/Documents/chromedriver.exe")
driver.get('https://physionet.org/cgi-bin/atm/ATM?database=ctu-uhb-ctgdb&tool=samples_to_csv')
import requests 
main_url = "https://physionet.org/atm/ctu-uhb-ctgdb/"

for i in range(2001,2047):
    select = Select(driver.find_element_by_name('rbase'))
    select.select_by_visible_text(str(i))
    driver.find_element_by_xpath(".//input[@type='radio' and @value='e']").click()
    url= main_url+ str(i)+"/0/e/rdsamp/csv/pd/samples.csv"
    print(url)
    print(i)
    r = requests.get(url) 
    with open(str(i)+".csv",'wb') as f: 
        f.write(r.content)
    # break
driver.close()