Q1. Please describe the overall scale of Company X's business? Is it growing or declining?

![Alt text](growth.png?raw=true "Original")


![Alt text](growth1.png?raw=true "Original")

Q2. Based on this data, when are people's demand for cars at a peak?

![Alt text](demand.png?raw=true "Original")

Q3. How many cars, at a minimum, does Company X need to operate their business?

![Alt text](count.png?raw=true "Original")


<h1> In order to run the code </h1>

1. chmod +x ./run.sh
2. ./run.sh

password="root"


OR

1. conda env create
2. conda activate car_rentals
3. jupyter notebook


A1. If a user (not specified) has not rented a car for some number of days,e.g. N=4 days, what is the probability
of re-rental the next day? Based on the whole population of users, plot the probability for N=1 to 100 days.

re-rental prob. for the next day (0-100) = Number of Cust. re-rentals for N days / total number of Cust. rentals from the whole base