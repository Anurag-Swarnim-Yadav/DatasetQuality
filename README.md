# Updating the repo every day. 


# Security-Vulnerability-Repair


## RQ1
Replication result of VulRepair, CodeBERT, GraphCodeBERT and UniXcoder.

| Models           	| PP Reported 	| PP Replicated 	|
|------------------	|-------------	|---------------	|
| VulRepair/CodeT5 	| 44% <a href="https://dl.acm.org/doi/pdf/10.1145/3540250.3549098">Fu et al.</a> ; 44.96% <a href="https://ieeexplore.ieee.org/stamp/stamp.jsp?tp=&arnumber=10232867">Zhang et al.</a>  	| 40.42%        	|
| CodeBERT         	| 31% <a href="https://dl.acm.org/doi/pdf/10.1145/3540250.3549098">Fu et al.</a> ; 32.94% <a href="https://ieeexplore.ieee.org/stamp/stamp.jsp?tp=&arnumber=10232867">Zhang et al.</a>  	| 33.20%        	|
| GraphCodeBERT    	| 37.98% <a href="https://ieeexplore.ieee.org/stamp/stamp.jsp?tp=&arnumber=10232867">Zhang et al.</a>       | 38.51%        	|
| UniXcoder        	| 40.62% <a href="https://ieeexplore.ieee.org/stamp/stamp.jsp?tp=&arnumber=10232867">Zhang et al.</a>      	| 40.96%        	|

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



## RQ4A

![RQ4A-Top-10-ModelPerformance](https://github.com/Anurag-Swarnim-Yadav/Security-Vulnerability-Repair/blob/main/RQ4A/RQ4A-Top10-ModelPerformance.png)



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


## RQ5

| Models        	| Beam = 1 	|       	| Beam = 3 	|       	| Beam = 5 	|       	| Beam = 50 	|        	|        	|
|---------------	|----------	|-------	|----------	|-------	|----------	|-------	|-----------	|--------	|--------	|
| Datasets      	| BF       	| TL    	| BF       	| TL    	| BF       	| TL    	| BF        	| VR     	| TL     	|
| VulRepair     	| 3.6%     	| 13.5% 	| 7.4%     	| 19.0% 	| 7.6%     	| 20.2% 	| 6.55%     	| 10.27% 	| 18.67% 	|
| CodeBERT      	| 3.0%     	| 12.5% 	| 4.6%     	| 17.3% 	| 5.36%    	| 18.9% 	| 11.76%    	| 5.38%  	| 24.55% 	|
| GraphCodeBERT 	| 2.2%     	| 11.5% 	| 4.6%     	| 16.9% 	| 5.8%     	| 19.0% 	| 11.76%    	| 6.25%  	| 25.42% 	|
| UniXcoder     	| 1.9%     	| 12.9% 	| 5.2%     	| 18.1% 	| 6.6%     	| 19.7% 	| 11.31%    	| 6.18%  	| 26.07% 	|

Note: BF = Bug-Fix, TL = Transfer Learning, VR = Vulnerability Repair

BF (Bug-Fix): The models are trained on the bug-fix dataset and tested on the RQ3B vulnerability dataset.<br>
TL (Transfer Learning): The models are initially trained on the bug-fix dataset and subsequently fine-tuned on the RQ3B vulnerability dataset.


![%PP as a Function of Beam Size for RQ5](https://github.com/Anurag-Swarnim-Yadav/Security-Vulnerability-Repair/blob/main/RQ5/Transfer-Learning/RQ5-TL-Beam-Sizes.png)





## CodeT5 Beam Analysis (New Work - Not Included In The Paper)

<a href="https://ieeexplore.ieee.org/stamp/stamp.jsp?tp=&arnumber=10232867">Zhang et al.</a> investigated Impact of different Beam Size values. So we used the exact dataset provided by the authors and tried to replicate the result.

# Replication Result

| Seed       	| Beam = 1 	| Beam = 2 	| Beam = 3 	| Beam = 4 	| Beam = 5 	| Beam = 10 	| Beam = 15 	| Beam = 20 	| Beam = 50 	| Beam = 100 	|
|------------	|:--------:	|:--------:	|:--------:	|:--------:	|:--------:	|:---------:	|:---------:	|:---------:	|:---------:	|:----------:	|
| 26312      	|  0.3130  	|  0.3623  	|  0.3816  	|  0.3951  	|  0.3992  	|   0.4127  	|   0.4185  	|   0.4191  	|   0.4220  	|   0.4174   	|
| 43511      	|  0.2198  	|  0.2708  	|  0.2948  	|  0.3019  	|  0.3095  	|   0.3259  	|   0.3306  	|   0.3271  	|   0.3247  	|   0.3288   	|
| 67732      	|  0.3212  	|  0.3769  	|  0.3992  	|  0.4127  	|  0.4174  	|   0.4291  	|   0.4332  	|   0.4343  	|   0.4297  	|   0.4308   	|
| 70757      	|  0.2726  	|  0.3359  	|  0.3517  	|  0.3634  	|  0.3693  	|   0.3851  	|   0.3845  	|   0.3851  	|   0.3875  	|   0.3845   	|
| 95541      	|  0.2655  	|  0.3253  	|  0.3453  	|  0.3617  	|  0.3664  	|   0.3787  	|   0.3810  	|   0.3810  	|   0.3834  	|   0.3769   	|
| 123456     	|  0.2521  	|  0.3013  	|  0.3376  	|  0.3470  	|  0.3529  	|   0.3681  	|   0.3681  	|   0.3681  	|   0.3693  	|   0.3681   	|
| Average PP 	|  27.33\% 	|  32.83\% 	|  35.17\% 	|  36.33\% 	|  36.83\% 	|  38.33\%  	|  38.67\%  	|  38.50\%  	|  38.67\%  	|   38.50\%  	|



![CodeT5: %PP as a Function of Beam Size](https://github.com/Anurag-Swarnim-Yadav/Security-Vulnerability-Repair/blob/main/CodeT5_Beam_Analysis/Beam_Analysis_Replication.png){ width=100 }





# NO Duplicates

| Seed       	| Beam = 1 	| Beam = 2 	| Beam = 3 	| Beam = 4 	| Beam = 5 	| Beam = 10 	| Beam = 15 	| Beam = 20 	| Beam = 50 	| Beam = 100 	|
|------------	|:--------:	|:--------:	|:--------:	|:--------:	|:--------:	|:---------:	|:---------:	|:---------:	|:---------:	|:----------:	|
| 26312      	|  0.0536  	|  0.0759  	|  0.0818  	|  0.0863  	|  0.0908  	|   0.0878  	|   0.0893  	|   0.0878  	|   0.0848  	|   0.0789   	|
| 43511      	|  0.0580  	|  0.0833  	|  0.0908  	|  0.0952  	|  0.0967  	|   0.1057  	|   0.1057  	|   0.1027  	|   0.0952  	|   0.0923   	|
| 67732      	|  0.0625  	|  0.0893  	|  0.0938  	|  0.1042  	|  0.0982  	|   0.0982  	|   0.1042  	|   0.1027  	|   0.0982  	|   0.0923   	|
| 70757      	|  0.0714  	|  0.0952  	|  0.1027  	|  0.1071  	|  0.1101  	|   0.1146  	|   0.1176  	|   0.1176  	|   0.1057  	|   0.1057   	|
| 95541      	|  0.0536  	|  0.0729  	|  0.0804  	|  0.0893  	|  0.0908  	|   0.0982  	|   0.0997  	|   0.0982  	|   0.0938  	|   0.0893   	|
| 123456     	|  0.0491  	|  0.0699  	|  0.0878  	|  0.0923  	|  0.0952  	|   0.0982  	|   0.0952  	|   0.0952  	|   0.0833  	|   0.0804   	|
| Average PP 	|  5.83\%  	|  8.17\%  	|  9.00\%  	|  9.50\%  	|  9.67\%  	|  10.00\%  	|  10.17\%  	|  10.00\%  	|   9.33\%  	|   9.00\%   	|

![CodeT5: %PP as a Function of Beam Size](https://github.com/Anurag-Swarnim-Yadav/Security-Vulnerability-Repair/blob/main/CodeT5_Beam_Analysis/Beam_Analysis_No_Duplicates.png)


