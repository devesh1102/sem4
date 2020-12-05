# importing the required module
import matplotlib.pyplot as plt
 
# x axis values
x = [0.15	,
0.34	,
0.5	,
1.5	,
3.75	,
8	,
10	]
# corresponding y axis values
y = [5.55
,	5.57
,	5.59
,	5.64
,	5.65
,	5.65
,	5.65]

# plotting the points 
plt.plot(x, y,color="red", linewidth="1.1")
# naming the x axis
plt.xlabel('resistance')
# naming the y axis
plt.ylabel('Vout')
  
plt.grid(linestyle='--', linewidth='0.05', color='blue')

# giving a title to my graph
plt.title('Part_1')


# function to show the plot
plt.show()
plt.savefig ("c:\\reistance.png", dpi=300, format="png")