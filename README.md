# Car-Clustering-
Using a dataset with 400 plus records on several car statistics, I implemented a clustering algorithm in order to more efficiently group the data and create a new efficient variable 


CARS_1 csv Documentation:

406 rows 
9 columns 

Car = Name of the Car |
MPG = Miles Per Gallon |
Cylinders = # of Cylinders in Car |
Displacement = Engine displacement measured in cubic centimeters, (larger the stronger the engine) |
Horsepower = Force needed to move 550 pounds 1 foot in a second, measured in watts |
Weight = How heavy the car is, measured in pounds |
Acceleration = amount of time for car to go 0 to 60 mph, measured in meters per second |
Model = Year car was introduced in 1900's |
Origin = Country of Origin |


Problem/Obstacle: 
Hypothetically speaking, if the Cars_1 csv represented a dataset of cars in an unnamed car dealership, 
one of the biggest obstacles for non informed consumers would be understanding how different cars compare to each other. 
This can range anywhere from trying to identify which cars are fundamentally similar due to a similarity in a  variety of factors, such as 
(MPG, Cylinders, Displacement, etc.), or it could be a question of which cars are fundamentally different and due to a basis of which factors.


Approach/Solution: In an attempt to overcome this issue, an appropriate approach would be to categorize the similar cars in the dataset amongst each other. 
Therefore, I divided the population of cars in the dataset, and categorized them into three different clusters using the k-means algorithm.

PS: For a more thorough breakdown of this project, please visit my website link, (https://sites.google.com/temple.edu/sean-trambadias-portfolio/data-analytics-projects-in-r).
