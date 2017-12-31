#Importing the dataset

dataset = read.csv("Mall_Customers.csv")

#creating the subset of data for analysis

X<-dataset[4:5]


# Using the dendrogram to find the optimal numbers of clusters

dendrogram = hclust(dist(X,method = 'euclidean'),method = 'ward.D')
plot(dendrogram,
     main = "Dendrogram",
     xlab = 'Customers',
     ylab='Euclidean Distances')


# Fitting the CLuster to the dataset

clusters=hclust(dist(X,method = 'euclidean'),method = 'ward.D')
y_hc=cutree(clusters,5)



# Visualising the clusters

library(cluster)

clusplot(X,y_hc,lines = 0,shade = T,color = T,labels = 2,plotchar = F,span = T,
         main = "CLusters of Clients",
         xlab = "Annual Income",
         ylab = "Spending Score")


