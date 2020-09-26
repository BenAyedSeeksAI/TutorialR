library(rvest)
url<- "https://apptrace.com/global_charts/top300/apps"
url2 <- "https://apptrace.com" 
body <- read_html(url)
companynames <- body %>% html_nodes("#positions_table_content .content") %>% html_text()
companyInfo <- body %>% html_nodes("#positions_table_content .cell2") %>% html_text()

i <-0
publisher <- c()
price <- c()
age <- c()

for (elem in companyInfo){
  if (i %% 3 ==0 ){
    publisher <- append(publisher,elem)
    
  }else if (i %% 3 == 1){
    price <- append(price,elem)
  }else {
    age <- append(age, elem)
  }
  i<-i+1
}
TopappsDF  <-data.frame(list(names=companynames, pub=publisher, price=price, age = age) )
companyLinks <- body %>% html_nodes("#positions_table_content a") %>% html_attr('href')
urls <- c()
for (elem in companyLinks){
    urls <- append(urls, paste(url2,elem, sep=""))
}
TopappsDF$urls <-urls
library('xlsx')

