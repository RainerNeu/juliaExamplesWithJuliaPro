using Plots;                            #Use the Package Plots

println("starting ========")

gr();                                              #Set Backend to gr for the package Plots
#plotly();                                         #Set Backend to plotly for the package Plots
dataArr1 =[5,2,3,4,5,5,-6,7,4,2,4,3,5,-2,-4,-5];                    #Create an Array
dataArr2 = [1,2,3,4,5,6,4,2,1,2,4,2,1,1,1,5]

arrLength=length(dataArr1);
xAxisValues=[1:arrLength]

diagramObj = plot(xAxisValues,dataArr1,label="dataArr1", title="Hello!",seriestype = [:bar])
diagramObj = plot!(xAxisValues,dataArr2,label="dataArr2", seriestype = [:line])
display(diagramObj)
println("end ========")
