
library(readxl)
library(haven)
library(ggplot2)
library(sf)
library(ggrepel)


camer<-sss$get_data_frame()
dta<-camer$gadm36_CMR_3


ggplot(data=dta, aes(x = lon, y =lat, fill = "darkred")) + 
  geom_sf() + 
  geom_point(shape =23, size = 4)+
  coord_sf(expand = FALSE)+
 theme(legend.position='bottom')
 
##################################################

ret1 <- camer$ret
ggplot(data=dta, aes(x = lon, y =lat, fill = NAME_1)) + 
  geom_sf()+
  theme_grey()+
  theme(axis.text = element_text())+
  geom_point(data = ret1, mapping = aes(x = lon, y =lat))+
  geom_label_repel(data = ret1, mapping = aes(x = lon, y =lat, label=NAME_1))

#######################################☺

kmr <- camer$camer1
ggplot() + 
  geom_sf(data = dta, mapping = aes(fill=NAME_3))+
  theme_grey()+
  theme(axis.text.x = element_text())+
  
  geom_point(data = kmr, mapping = aes(x = X, y =Y))+
  geom_label_repel(data = ret1, mapping = aes(x = lon, y =lat, label=NAME_3))

############################################kmr <- camer$camer1
ggplot() + 
  geom_sf(data = ret1, mapping = aes(fill=NAME_3))+
  theme_grey()+
  theme(axis.text.x = element_text())+
  geom_point(data = kmr, mapping = aes(x = X, y =Y))






