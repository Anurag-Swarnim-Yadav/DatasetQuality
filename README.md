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


## RQ2A

| Models           	| PP RQ2A 	| % of Replication 	|
|------------------	|---------	|------------------	|
| VulRepair/CodeT5 	| 8.91%   	| 22%              	|
| CodeBERT         	| 5.58%   	| 17%              	|
| GraphCodeBERT    	| 5.31%   	| 13%              	|
| UniXcoder        	| 4.82%   	| 12%              	|

Note: PP RQ2A shows perfect prediction scores on running on RQ2A dataset and 
% of Replication shows the fraction of perfect prediction in our replicated results from the VulRepair dataset.



## RQ2B

| Models           	| PP RQ2B 	| % of Replication 	|
|------------------	|---------	|------------------	|
| VulRepair/CodeT5 	| 13.17%  	| 33%              	|
| CodeBERT         	| 8.83%   	| 27%              	|
| GraphCodeBERT    	| 9.22%   	| 24%              	|
| UniXcoder        	| 9.10%   	| 22%              	|



## RQ3A

| Models           	| PP RQ3A 	| % of Replication 	|
|------------------	|---------	|------------------	|
| VulRepair/CodeT5 	| 7.14%   	| 17%              	|
| CodeBERT         	| 3.59%   	| 10.8%            	|
| GraphCodeBERT    	| 3.75%   	| 9.7%             	|
| UniXcoder        	| 4.11%   	| 10.0%            	|


## RQ3B

| Models           	| PP RQ3B 	| % of Replication 	|
|------------------	|---------	|------------------	|
| VulRepair/CodeT5 	| 10.27%  	| 25%              	|
| CodeBERT         	| 5.38%   	| 16%              	|
| GraphCodeBERT    	| 6.25%   	| 16%              	|
| UniXcoder        	| 6.18%   	| 15%              	|



## RQ4B
In this research question we first determined if the sampels have correct CWE tags. If the sample has incorrect CWE tag, we determine the correct tag based on manual analysis of the sample.
We also deteming if the corresponding fix is complete based on the manual analsyis.
<a href ="https://github.com/Anurag-Swarnim-Yadav/Security-Vulnerability-Repair/blob/main/RQ4B/Top-10-CWEs-Manual-Analysis.csv"> Top 10 CWEs Analysis for Accuracy and Completeness</a>


| Rank 	| CWE Type 	| Name                       	| RQ2B Samples 	| Accurate 	| Complete 	| Accurate & Complete 	|
|------	|----------	|----------------------------	|--------------	|----------	|----------	|---------------------	|
| 1    	| CWE-787  	| Out-of-bounds Write        	| 33           	| 15       	| 18       	| 12                  	|
| 2    	| CWE-79   	| Cross-site Scripting       	| 0            	| 0        	| 0        	| 0                   	|
| 5    	| CWE-78   	| OS Command Injection       	| 1            	| 0        	| 0        	| 0                   	|
| 6    	| CWE-89   	| SQL Injection              	| 1            	| 1        	| 1        	| 1                   	|
| 7    	| CWE-416  	| Use After Free             	| 29           	| 11       	| 18       	| 7                   	|
| 8    	| CWE-22   	| Path Traversa              	| 2            	| 1        	| 0        	| 0                   	|
| 9    	| CWE-352  	| Cross-Site Request Forgery 	| 2            	| 2        	| 1        	| 1                   	|
| 10   	| CWE-434  	| Dangerous File Type        	| -            	| -        	| -        	| -                   	|
|      	|          	| Total                      	| 68           	| 30       	| 38       	| 21                  	|
