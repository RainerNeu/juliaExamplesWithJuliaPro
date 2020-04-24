using DataFrames

#Create Dataframe
myDataFrame = DataFrame(Name = ["Paul", "Bryan", "Julia", "Helmut"],
                        Age = [22, 90, 38, 67])
                        
#add a new column
myDataFrame[!,:name_new_column] .= 1

println(myDataFrame)
