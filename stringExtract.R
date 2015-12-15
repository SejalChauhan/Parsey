library("yaml")


datayml <- yaml.load_file('/Users/sejalc/Workspaces/MyEclipse 2015/epistemic-games/src/main/resources/application.yml')
x<-length(datasourceyml<-datayml$spring$datasource)
useryml<-datayml$spring$datasource$username
passwordyml<-datayml$spring$datasource$password

urlyml <- datayml$spring$datasource$url
print(urlyml)

url<-urlyml

prefix_url <- "jdbc:mysql://"
url2 = unlist(strsplit(url, prefix_url))


prefix_url <- "/"
url3 = unlist(strsplit(url2, prefix_url))

hostyml <- url3[1][1]

prefix_url <- "?"
url4 = unlist(strsplit(url3[2][1], prefix_url, TRUE))

dbnameyml<-url4[1][1]

print(useryml)
print(passwordyml)
print(hostyml)

print(dbnameyml)

