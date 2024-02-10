# COOPERATORS AUTO INSURANCE

Predicting whether a customer will buy auto insurance

The dataset consists of 24 attributes describing 101,891 customers and their vehicles. The goal of the project is to predict whether the customer purchased a policy from Cooperators. The dataset mostly covers the provinces of Ontario, New Brunswick, Prince Edward Island and Newfoundland in Canada.

<p float="left">
<img src="figures/geospatial_plot.png" width="500" height="300"/>
<img src="figures/geospatial_plot2.png" width="500" height="300"/>
<img src="figures/geospatial_plot3.png" width="500" height="300"/>
</p>

The features describing the customers include:
<p float="left">
<img src="figures/demographics.png" width="500" height="500"/>
<img src="figures/vehicle_specs.png" width="500" height="500"/>
</p>

Out of 101,891 customers who asked for an auto insurance quote from Cooperators, only 22% of customers eventually purchased a policy.
<p float="left">
<img src="figures/class_distribution.png" width="500" height="380"/>
</p>

We also looked at regions in Canada that had an above average purchase rate (greater than 22%) with at least 100 customers. Places away from Toronto like Elmira, St. Katherine's, Stratford had above average percentage of customers buying Cooperators policy.

<p float="left">
<img src="figures/above_avg.png" width="800" height="480"/>
</p>

On the contrary, regions closer to Toronto had fewer customers buying Cooperators auto insurance policies (less than 22%) than overall average. 

<p float="left">
<img src="figures/below_avg.png" width="800" height="480"/>
</p>

### KEY TAKEAWAYS FROM THE STUDY

Auto insurance policies bundled with other products was the most important feature distinguishing between customers who purchased policies vs. those who didn't. Below we see the the splits between customers who did or didn't purchase multi insurance products. The plot on the left (Observed Distribution) describes the splits that were observed in the dataset whereas plot on the right (Expected Distribution) describes the split if the percentage of customers looking for multi products were the same whether they did or didn't buy insurance. The difference between the observed and expected distribution was statistically significant. 
<p float="left">
<img src="figures/multi_product_observed.png" width="300" height="300"/>
<img src="figures/multi_product_expected.png" width="300" height="300"/>
</p>

Longitude (going from east to west) was also a statistically significant feature distinguishing between buyers and non-buyers. Non-buyers were more spread out in Canada whereas buyers were concentrated within a narrow band of longitudes, typically within the province of Ontario (along the length of Lake Ontario).

<p float="left">
<img src="figures/longitude_boxplot.png" width="500" height="375"/>
</p>

### PREDICTING CUSTOMERS WHO BOUGHT INSURANCE

We trained a model to predict buyers of auto insurance based on their features. We then tested the model on a test dataset of 10,183 (10% of the dataset) customers. The model modestly predicts (ROC AUC = 0.67) if a customer purchased insurance based on the features provided.

<p float="left">
<img src="figures/confusion_matrix.png" width="450" height="450"/>
</p>

We also looked at features that played the most important role in predicting buyers of insurance. Once again, bundling auto insurance with other products and longitude were the two most important features followed by number of years licenced and age.

<p float="left">
<img src="figures/feature_importances.png" width="650" height="400"/>
</p>
