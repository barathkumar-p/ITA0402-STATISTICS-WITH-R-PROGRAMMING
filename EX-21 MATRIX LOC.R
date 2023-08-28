print("Two vectors of different length:")
v1=c(1,3,4,5)
v2=c(10,11,12,13,14,15)
print(v1,v2)
#print(v2)
result=array(c(v1,v2),dim=c(3,3,2))
print("New Array")
print(result)
print(result[2,,2])
print(result[3,3,1])

#cat("The Second row of the second matrix of the array : ",result[2,,2])

#cat("The element in the 3rd row and 3rd column of 1st matrix : ",result[3,3,1]) # nolint

