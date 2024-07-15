# Updating the repo every day. 


# Security-Vulnerability-Repair


## RQ1
Replication result of VulRepair, CodeBERT, GraphCodeBERT and UniXcoder.

| Models           	| PP Reported 	| PP Replicated 	|
|------------------	|-------------	|---------------	|
| VulRepair/CodeT5 	| 44%; 44.96% 	| 40.42%        	|
| CodeBERT         	| 31%; 32.94% 	| 33.20%        	|
| GraphCodeBERT    	| 37.98%      	| 38.51%        	|
| UniXcoder        	| 40.62%      	| 40.96%        	|

Note: The trained models will be released separately.





## RQ4B
In this research question we first determined if the sampels have correct CWE tags. If the sample has incorrect CWE tag, we determine the correct tag based on manual analysis of the sample.
We also deteming if the corresponding fix is complete based on the manual analsyis.
<a href ="https://github.com/Anurag-Swarnim-Yadav/Security-Vulnerability-Repair/blob/main/RQ4B/Top-10-CWEs-Manual-Analysis.csv"> Top 10 CWEs Analysis for Accuracy and Completeness</a>
