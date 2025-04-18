#  R+R: Security Vulnerability Dataset Quality Is Critical
### ACSAC 2024: TECHNICAL PAPER - PAPER #300
### TO BE PRESENTED AT THE <a href="https://www.acsac.org/">ACSAC 2024</a>, DECEMBER 9-13, 2024

#### Paper: https://ieeexplore.ieee.org/abstract/document/10917419


## ENVIRONMENT SETUP

#### CONDA SETUP [Anaconda3 4.9.2 Installer for Linux-64]
1) Open your terminal.
2) Use the following command to download the specific version of Anaconda3<br>
   `curl -O https://repo.anaconda.com/archive/Anaconda3-2020.11-Linux-x86_64.sh`
3) Once the installer has been downloaded, run it using the following command<br>
   `bash Anaconda3-2020.11-Linux-x86_64.sh`
4) Once the installation is complete, to ensure that Conda 4.9.2 has been installed correctly, restart your terminal and run the following command<br>
   `conda --version`
5) You should see: conda 4.9.2

####  CONDA ENVIRONMENT SETUP [PYTHON 3.10.12]
1) After Conda is installed and initialized, open your terminal.
2) Run the following command to create a new conda environment with Python 3.10.12<br>
   `conda create --name DatasetQuality python=3.10.12`
3) Once the environment is created, activate it using the following command<br>
   `conda activate DatasetQuality`
4) To make sure that the correct version of Python (3.10.12) is installed in the environment<br>
   `python --version`
5) You should see: Python 3.10.12

####  REQUIRED PACKAGES [GIT CLONE]
1) First, install pip in your environment (if not already installed)<br>
   `conda install pip`
2)  Clone our repository to your machine<br>
   `git clone https://github.com/Anurag-Swarnim-Yadav/DatasetQuality.git`<br>
   `cd DatasetQuality`
4)  Install the necessary packages using pip
      - For NVIDIA A100-SXM4-80GB<br>
      `pip install -r requirements.txt`
      - For other setups<br>
      `pip install -r requirements-small.txt`
5) You can verify that the packages have been installed correctly by running<br>
   `pip list`



## DATASET OVERVIEW



#### VULREPAIR DATASET [RQ1]

| Samples            	| Train 	| Test       	|
|--------------------	|-------	|------------	|
| Total Samples (TS) 	| 6,776  	| 1,706     |



#### VULREPAIR DATASET ANALYSIS - UNIQUENESS [RQ2A AND RQ2B]

<table>
  <tr>
    <th>Samples</th>
    <th>Train</th>
    <th>Test</th>
  </tr>
  <tr>
    <td>Total Samples (TS)</td>
    <td align="right">6,776</td>
    <td align="right">1,706</td>
  </tr>
  <tr>
    <td>In-Set Duplicates (IS Dup)</td>
    <td align="right">1,593</td>
    <td align="right">91</td>
  </tr>
  <tr>
    <td>Samples Left (SL = TS - IS Dup)</td>
    <td align="right">5,183</td>
    <td align="right">1,615</td>
  </tr>
  <tr>
    <td>Cross-Set Duplicates (CS Dup)</td>
    <td colspan="2" align="center">796</td>
  </tr>
</table>


#### VULREPAIR DATASET ANALYSIS - CONSISTENCY [RQ3A AND RQ3B]

<table>
  <tr>
    <th>Samples</th>
    <th>Train</th>
    <th>Test</th>
  </tr>
  <tr>
    <td>Total Samples (TS)</td>
    <td align="right">6,776</td>
    <td align="right">1,706</td>
  </tr>
  <tr>
    <td>In-Set Duplicates (IS Dup)</td>
    <td align="right">1,858</td>
    <td align="right">111</td>
  </tr>
  <tr>
    <td>Samples Left (SL = TS - IS Dup)</td>
    <td align="right">4,918</td>
    <td align="right">1,595</td>
  </tr>
  <tr>
    <td>Cross-Set Duplicates (CS Dup)</td>
    <td colspan="2" align="center">923</td>
  </tr>
</table>




#### BUG-FIX DATASET ANALYSIS [RQ5]

<table>
  <tr>
    <th>Samples</th>
    <th>Train</th>
    <th>Validation</th>
  </tr>
  <tr>
    <td>Total Samples (TS)</td>
    <td align="right">534,858</td>
    <td align="right">10,000</td>
  </tr>
  <tr>
    <td>In-Set Duplicates (IS Dup)</td>
    <td align="right">6,192</td>
    <td align="right">4</td>
  </tr>
  <tr>
    <td>Samples Left (SL = TS - IS Dup)</td>
    <td align="right">528,666</td>
    <td align="right">9,996</td>
  </tr>
  <tr>
    <td>Cross-Set Duplicates (CS Dup)</td>
    <td colspan="2" align="center">247</td>
  </tr>
</table>


**Note:** The Bug-Fix dataset is available at<br>
<https://github.com/ASSERT-KTH/VRepair/releases/download/v20240223/BugFix.tar.bz2>.<br>
Thanks to the authors of VRepair.





## EXPERIMENTS
In an attempt to provide robust performance evaluations, each result is reported as the mean performance of six networks trained using different random seeds.<br>
`Six random Seeds are: 26312, 43511, 67732, 70757, 95541, and 123456` 


### RQ1

#### DATASET
| Samples            	| Train 	| Test       	| Comments 	|
|--------------------	|-------	|------------	|-----------------------------	|
| Total Samples (TS) 	| 6,776  	| 1,706        | Contains IS and CS Duplicates |

Note: IS: In-Set and CS: Cross-Set Duplicates


#### TO RUN THE RQ1 EXPERIMENT

`cd RQ1`<br>

#### VULREPAIR

1) To train the VulRepair Model. Run the following command in your terminal<br>
`sh run_VulRepair_train.sh`
2) Once the model is trained, navigate to `cd RQ1-Code/VulRepair/` to see the VulRepair_train.log file and the new folder VulRepair_model, where the mode will be saved.
3) To test the VulRepair Model. Go back to `cd ../..` and run the following command in your terminal<br>
`sh run_VulRepair_test.sh`
4) Once finished, navigate to `cd RQ1-Code/VulRepair/`, and you will see VulRepair_test.log as well as the new folder raw_predictions, which will have the model prediction.


#### CODEBERT
1) To train the CodeBERT Model. Run the following command in your terminal<br>
`sh run_CodeBERT_train.sh`
2) Once the model is trained, navigate to `cd RQ1-Code/CodeBERT/` to see the CodeBERT_train.log file and the new folder CodeBERT_model, where the mode will be saved.
3) To test the CodeBERT Model. Go back to `cd ../..` and run the following command in your terminal<br>
`sh run_CodeBERT_test.sh`
4) Once finished, navigate to `cd RQ1-Code/CodeBERT/`, and you will see CodeBERT_test.log as well as the new folder raw_predictions, which will have the model prediction.

#### GRAPHCODEBERT
1) To train the GraphCodeBERT Model. Run the following command in your terminal<br>
`sh run_GraphCodeBERT_train.sh`
2) Once the model is trained, navigate to `cd RQ1-Code/GraphCodeBERT/` to see the GraphCodeBERT_train.log file and the new folder GraphCodeBERT_model, where the mode will be saved.
3) To test the GraphCodeBERT Model. Go back to `cd ../..` and run the following command in your terminal<br>
`sh run_GraphCodeBERT_test.sh`
4) Once finished, navigate to `cd RQ1-Code/GraphCodeBERT/`, and you will see GraphCodeBERT_test.log as well as the new folder raw_predictions, which will have the model prediction.

#### UNIXCODER
1) To train the UniXcoder Model. Run the following command in your terminal<br>
`sh run_UniXcoder_train.sh`
2) Once the model is trained, navigate to `cd RQ1-Code/UniXcoder/` to see the UniXcoder_train.log file and the new folder UniXcoder_model, where the mode will be saved.
3) To test the UniXcoder Model. Go back to `cd ../..` and run the following command in your terminal<br>
`sh run_UniXcoder_test.sh`
4) Once finished, navigate to `cd RQ1-Code/UniXcoder/`, and you will see UniXcoder_test.log as well as the new folder raw_predictions, which will have the model prediction.




#### REPLICATION RESULT OF VULREPAIR, CODEBERT, GRAPHCODEBERT AND UNIXCODER.
**TO VERIFY OUR RESULTS**, within the RQ1 folder, we have six different seed subfolders, each containing the raw prediction file for its respective model.


| Models           	| PP Reported 	| PP Replicated 	| Change 	|
|------------------	|-------------	|---------------	|---------------	|
| VulRepair/CodeT5 	| 44% <a href="https://dl.acm.org/doi/pdf/10.1145/3540250.3549098">Fu et al.</a> ; 44.96% <a href="https://ieeexplore.ieee.org/stamp/stamp.jsp?tp=&arnumber=10232867">Zhang et al.</a>  	| 40.42%        	| -3.58% ; -4.54%  |
| CodeBERT         	| 31% <a href="https://dl.acm.org/doi/pdf/10.1145/3540250.3549098">Fu et al.</a> ; 32.94% <a href="https://ieeexplore.ieee.org/stamp/stamp.jsp?tp=&arnumber=10232867">Zhang et al.</a>  	| 33.20%        	| +2.20% ; +0.74%  |
| GraphCodeBERT    	| 37.98% <a href="https://ieeexplore.ieee.org/stamp/stamp.jsp?tp=&arnumber=10232867">Zhang et al.</a>       | 38.51%        	| +0.53%        	|
| UniXcoder        	| 40.62% <a href="https://ieeexplore.ieee.org/stamp/stamp.jsp?tp=&arnumber=10232867">Zhang et al.</a>      	| 40.96%        	| +0.34%        	|

Note: The trained models will be released separately.


### RQ2A

#### DATASET
| Samples            	| Train 	| Test 	|
|--------------------	|-------	|------	|
| Unique Samples	      | 4387  	| 1615 	|


#### TO RUN THE RQ2A EXPERIMENT

`cd RQ2A`<br>

#### VULREPAIR
1) To train<br>
`sh run_VulRepair_train.sh`
2) To test<br>
`sh run_VulRepair_test.sh`


#### CODEBERT
1) To train<br>
`sh run_CodeBERT_train.sh`
2) To test<br>
`sh run_CodeBERT_test.sh`


#### GRAPHCODEBERT
1) To train<br>
`sh run_GraphCodeBERT_train.sh`
2) To test<br>
`sh run_GraphCodeBERT_test.sh`



#### UNIXCODER
1) To train<br>
`sh run_UniXcoder_train.sh`
2) To test<br>
`sh run_UniXcoder_test.sh`





#### RESULT
**TO VERIFY OUR RESULTS**, within the RQ2A folder, we have six different seed subfolders, each containing the raw prediction file for its respective model.

| Models           	| PP RQ2A 	| % of Replication 	|
|------------------	|---------	|------------------	|
| VulRepair/CodeT5 	| 8.91%   	| 22.0% (8.91/40.42) |
| CodeBERT         	| 5.58%   	| 16.8% (5.58/33.20) |
| GraphCodeBERT    	| 5.31%   	| 13.7% (5.31/38.51) |
| UniXcoder        	| 4.82%   	| 11.8% (4.82/40.96) |

Note: PP RQ2A shows perfect prediction scores on running on RQ2A dataset and 
% of Replication shows the fraction of perfect prediction in our replicated results from the VulRepair dataset.



### RQ2B

#### DATASET
| Samples            	| Train 	| Test 	|
|--------------------	|-------	|------	|
| Unique Samples       	| 5183  	| 819 	|


#### TO RUN THE RQ2B EXPERIMENT

`cd RQ2B`<br>

#### VULREPAIR
1) To train<br>
`sh run_VulRepair_train.sh`
2) To test<br>
`sh run_VulRepair_test.sh`


#### CODEBERT
1) To train<br>
`sh run_CodeBERT_train.sh`
2) To test<br>
`sh run_CodeBERT_test.sh`


#### GRAPHCODEBERT
1) To train<br>
`sh run_GraphCodeBERT_train.sh`
2) To test<br>
`sh run_GraphCodeBERT_test.sh`



#### UNIXCODER
1) To train<br>
`sh run_UniXcoder_train.sh`
2) To test<br>
`sh run_UniXcoder_test.sh`





#### RESULT
**TO VERIFY OUR RESULTS**, within the RQ2B folder, we have six different seed subfolders, each containing the raw prediction file for its respective model.

| Models           	| PP RQ2B 	| % of Replication 	|
|------------------	|---------	|------------------	|
| VulRepair/CodeT5 	| 13.17%  	| 33% (13.17/40.42)  |
| CodeBERT         	| 8.83%   	| 27% (8.83/33.20)   |
| GraphCodeBERT    	| 9.22%   	| 24% (9.22/38.51)   |
| UniXcoder        	| 9.10%   	| 22% (9.10/40.96)   |



### RQ3A

#### DATASET
| Samples            	| Train 	| Test 	|
|--------------------	|-------	|------	|
| Unique Samples       	| 3995    | 1595 	|


#### TO RUN THE RQ3A EXPERIMENT

`cd RQ3A`<br>

#### VULREPAIR
1) To train<br>
`sh run_VulRepair_train.sh`
2) To test<br>
`sh run_VulRepair_test.sh`


#### CODEBERT
1) To train<br>
`sh run_CodeBERT_train.sh`
2) To test<br>
`sh run_CodeBERT_test.sh`


#### GRAPHCODEBERT
1) To train<br>
`sh run_GraphCodeBERT_train.sh`
2) To test<br>
`sh run_GraphCodeBERT_test.sh`



#### UNIXCODER
1) To train<br>
`sh run_UniXcoder_train.sh`
2) To test<br>
`sh run_UniXcoder_test.sh`





#### RESULT
**TO VERIFY OUR RESULTS**, within the RQ3A folder, we have six different seed subfolders, each containing the raw prediction file for its respective model.

| Models           	| PP RQ3A 	| % of Replication 	|
|------------------	|---------	|------------------	|
| VulRepair/CodeT5 	| 7.14%   	| 17.7% (7.14/40.42) |
| CodeBERT         	| 3.59%   	| 10.8% (3.59/33.20) |
| GraphCodeBERT    	| 3.75%   	| 9.7% (3.75/38.51)  |
| UniXcoder        	| 4.11%   	| 10.0% (4.11/40.96) |


### RQ3B

#### DATASET
| Samples            	| Train 	| Test 	|
|--------------------	|-------	|------	|
| Unique Samples       	| 4918  	| 672 	|


#### TO RUN THE RQ3B EXPERIMENT

`cd RQ3B`<br>

#### VULREPAIR
1) To train<br>
`sh run_VulRepair_train.sh`
2) To test<br>
`sh run_VulRepair_test.sh`


#### CODEBERT
1) To train<br>
`sh run_CodeBERT_train.sh`
2) To test<br>
`sh run_CodeBERT_test.sh`


#### GRAPHCODEBERT
1) To train<br>
`sh run_GraphCodeBERT_train.sh`
2) To test<br>
`sh run_GraphCodeBERT_test.sh`



#### UNIXCODER
1) To train<br>
`sh run_UniXcoder_train.sh`
2) To test<br>
`sh run_UniXcoder_test.sh`





#### RESULT
**TO VERIFY OUR RESULTS**, within the RQ3B folder, we have six different seed subfolders, each containing the raw prediction file for its respective model.

| Models           	| PP RQ3B 	| % of Replication 	|
|------------------	|---------	|------------------	|
| VulRepair/CodeT5 	| 10.27%  	| 25.5% (10.27/40.24)|
| CodeBERT         	| 5.38%   	| 16.2% (5.38/33.20) |
| GraphCodeBERT    	| 6.25%   	| 16.2% (6.25/38.51) |
| UniXcoder        	| 6.18%   	| 15.0% (6.18/40.96) |



### RQ4A
In this research question, we report the performance of each of the models studied on the top 10 CWEs, showing their performance when duplicate and inconsistent samples are removed from consideration.

![RQ4A-Top-10-ModelPerformance](https://github.com/Anurag-Swarnim-Yadav/Security-Vulnerability-Repair/blob/main/RQ4A/RQ4A-Top10-ModelPerformance.png)



### RQ4B
In this research question, we first assessed whether the samples had the correct CWE tags. If a sample was found to have an incorrect CWE tag, we identified the correct tag through manual analysis of the sample. Additionally, we evaluated whether the corresponding fix was complete based on manual analysis.<br>

#### RESULT:<a href ="https://github.com/Anurag-Swarnim-Yadav/DatasetQuality/blob/main/RQ4B/Top-10-CWEs-Manual-Analysis.csv"> MANUAL ANALYSIS REPORT [Top 10 CWEs ANALYSIS FOR ACCURACY AND COMPLETENESS]</a>


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


### RQ5 [TRANSFER LEARNING]

#### BUG-FIX DATASET
| Samples                           	| Train 	| Validation 	|
|-----------------------------------	|-------	|------------	|
| Unique Samples                      	| 528419  | 9996        |




#### FOR FINETUNING, WE USED RQ3B DATASET.


#### RESULT
We have released all the models at <a href ="https://doi.org/10.5281/zenodo.11582874">https://doi.org/10.5281/zenodo.11582874</a><br>
Unzip the folder using `unzip filename.zip`

#### PRE-TRAINING
Pretraning is done on `Seed 26312`.<br>
Download<br>
`VulRepairRQ5_Seed26312`<br>
`CodeBERTRQ5_Seed26312`<br>
`GraphCodeBERTRQ5_Seed26312`<br>
`UniXcoderRQ5_Seed26312`

#### VULREPAIR
1) To train<br>
`sh run_pretrain.sh`
2) To test<br>
`sh run_pretrain_test.sh`


#### CODEBERT
1) To train<br>
`sh run_pretrain.sh`
2) To test<br>
`sh run_pretrain_test.sh`


#### GRAPHCODEBERT
1) To train<br>
`sh run_pretrain.sh`
2) To test<br>
`sh run_pretrain_test.sh`



#### UNIXCODER
1) To train<br>
`sh run_pretrain.sh`
2) To test<br>
`sh run_pretrain_test.sh`

#### TRANSFER LEARNING
Transfer learning is done on six random `Seeds: 26312, 43511, 67732, 70757, 95541, and 123456`<br>
Download all the folders.<br>
Testing is done on `beam sizes: 1, 3, 5, 10, 20, 30, 40, 50`


#### VULREPAIR
1) To train<br>
`sh run_train.sh`
2) To test<br>
`sh run_test.sh`


#### CODEBERT
1) To train<br>
`sh run_train.sh`
2) To test<br>
`sh run_test.sh`


#### GRAPHCODEBERT
1) To train<br>
`sh run_train.sh`
2) To test<br>
`sh run_test.sh`



#### UNIXCODER
1) To train<br>
`sh run_train.sh`
2) To test<br>
`sh run_test.sh`
<br>



**TO VERIFY OUR RESULTS**, the RQ5 folder is organized into two subfolders: Bug-Fix and Transfer-Learning. The Bug-Fix subfolder contains one seed folder, while the Transfer-Learning subfolder includes six distinct seed folders, each holding the raw prediction file for the corresponding model.

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


## RELATED WORK

#### VISION TRANSFORMER INSPIRED AUTOMATED VULNERABILITY REPAIR PAPER <a href="https://dl.acm.org/doi/10.1145/3632746">[VQM]</a>
We conducted a brief analysis of both the pre-training bug-fix dataset and VQM vulnerability fine-tuning dataset used in that paper. The pre-training dataset contains 21,246 training samples and 2,362 validation samples. Our review revealed 18,622 duplicated entries in the training set and 782 duplicates in the validation set. After removing those, 1,579 cross-set duplicates (in both train and validation) were identified, which were all of the validation set code samples present in the training set. Additionally, our analysis uncovered a substantial overlap between the bug-fix dataset and the VQM vulnerability fine-tuning dataset. Specifically, there were 511 matching entries in the test set, 243 in the validation set, and 1,747 in the training set of the vulnerability dataset that overlapped with the bug-fix dataset.
#### RESULT: <a href="https://github.com/Anurag-Swarnim-Yadav/Security-Vulnerability-Repair/tree/main/VQM_Analysis_Report">DETAILED ANALYSIS AND REPORT</a>


## CODET5 BEAM ANALYSIS [NEW WORK - NOT INCLUDED IN THE PAPER]

### REPLICATION
<a href="https://ieeexplore.ieee.org/stamp/stamp.jsp?tp=&arnumber=10232867">Zhang et al.</a> investigated the impact of varying beam size values. To verify their findings, we utilized the same dataset provided by the authors and attempted to replicate the results. Our observations indicate that as the beam size increases, the %PP value goes up.

#### DATASET

| Samples            	| Train 	| Validation 	| Test 	|
|--------------------	|-------	|------------	|------	|
| Total Samples (TS) 	| 5937  	| 839        	| 1706 	|


#### RESULT
| Seed       	| Beam = 1 	| Beam = 2 	| Beam = 3 	| Beam = 4 	| Beam = 5 	| Beam = 10 	| Beam = 15 	| Beam = 20 	| Beam = 50 	| Beam = 100 	|
|------------	|:--------:	|:--------:	|:--------:	|:--------:	|:--------:	|:---------:	|:---------:	|:---------:	|:---------:	|:----------:	|
| 26312      	|  0.3130  	|  0.3623  	|  0.3816  	|  0.3951  	|  0.3992  	|   0.4127  	|   0.4185  	|   0.4191  	|   0.4220  	|   0.4174   	|
| 43511      	|  0.2198  	|  0.2708  	|  0.2948  	|  0.3019  	|  0.3095  	|   0.3259  	|   0.3306  	|   0.3271  	|   0.3247  	|   0.3288   	|
| 67732      	|  0.3212  	|  0.3769  	|  0.3992  	|  0.4127  	|  0.4174  	|   0.4291  	|   0.4332  	|   0.4343  	|   0.4297  	|   0.4308   	|
| 70757      	|  0.2726  	|  0.3359  	|  0.3517  	|  0.3634  	|  0.3693  	|   0.3851  	|   0.3845  	|   0.3851  	|   0.3875  	|   0.3845   	|
| 95541      	|  0.2655  	|  0.3253  	|  0.3453  	|  0.3617  	|  0.3664  	|   0.3787  	|   0.3810  	|   0.3810  	|   0.3834  	|   0.3769   	|
| 123456     	|  0.2521  	|  0.3013  	|  0.3376  	|  0.3470  	|  0.3529  	|   0.3681  	|   0.3681  	|   0.3681  	|   0.3693  	|   0.3681   	|
| Average PP 	|  27.33\% 	|  32.83\% 	|  35.17\% 	|  36.33\% 	|  36.83\% 	|  38.33\%  	|  38.67\%  	|  38.50\%  	|  38.67\%  	|   38.50\%  	|



<!-- ![CodeT5: %PP as a Function of Beam Size](https://github.com/Anurag-Swarnim-Yadav/Security-Vulnerability-Repair/blob/main/CodeT5_Beam_Analysis/Beam_Analysis_Replication.png) -->

<img src="https://github.com/Anurag-Swarnim-Yadav/Security-Vulnerability-Repair/blob/main/CodeT5_Beam_Analysis/Beam_Analysis_Replication.png" alt="CodeT5: %PP as a Function of Beam Size" width="600" height="300"/>





### NO DUPLICATE SAMPLES
For this experiment, we removed Infile and Crossfile duplicates from the dataset. We reran the CodeT5 model and observed that beyond a beam size of 15, %PP decreases. We were unable to find reported in any previously published papers.

#### DATASET

| Samples                           	| Train 	| Validation 	| Test         	|
|-----------------------------------	|-------	|------------	|--------------	|
| Total Samples (TS)                	| 5937  	| 839        	| 1706         	|
| In-Set Duplicates (IS Dup)        	| 1418  	| 27         	| 111          	|
| Sample Left(SL = TS - IS Dup)     	| 4519  	| 812        	| 1595         	|
| Cross-Set Duplicates (TEST)       	| -     	| -          	| Tr:815,V:108 	|
| Cross-Set Duplicates (VALIDATION) 	| -     	| Tr:413     	| -            	|
| Unique Samples (US = SL - CS Dup) 	| 4519  	| 399        	| 672          	|


#### RESULT
| Seed       	| Beam = 1 	| Beam = 2 	| Beam = 3 	| Beam = 4 	| Beam = 5 	| Beam = 10 	| Beam = 15 	| Beam = 20 	| Beam = 50 	| Beam = 100 	|
|------------	|:--------:	|:--------:	|:--------:	|:--------:	|:--------:	|:---------:	|:---------:	|:---------:	|:---------:	|:----------:	|
| 26312      	|  0.0536  	|  0.0759  	|  0.0818  	|  0.0863  	|  0.0908  	|   0.0878  	|   0.0893  	|   0.0878  	|   0.0848  	|   0.0789   	|
| 43511      	|  0.0580  	|  0.0833  	|  0.0908  	|  0.0952  	|  0.0967  	|   0.1057  	|   0.1057  	|   0.1027  	|   0.0952  	|   0.0923   	|
| 67732      	|  0.0625  	|  0.0893  	|  0.0938  	|  0.1042  	|  0.0982  	|   0.0982  	|   0.1042  	|   0.1027  	|   0.0982  	|   0.0923   	|
| 70757      	|  0.0714  	|  0.0952  	|  0.1027  	|  0.1071  	|  0.1101  	|   0.1146  	|   0.1176  	|   0.1176  	|   0.1057  	|   0.1057   	|
| 95541      	|  0.0536  	|  0.0729  	|  0.0804  	|  0.0893  	|  0.0908  	|   0.0982  	|   0.0997  	|   0.0982  	|   0.0938  	|   0.0893   	|
| 123456     	|  0.0491  	|  0.0699  	|  0.0878  	|  0.0923  	|  0.0952  	|   0.0982  	|   0.0952  	|   0.0952  	|   0.0833  	|   0.0804   	|
| Average PP 	|  5.83\%  	|  8.17\%  	|  9.00\%  	|  9.50\%  	|  9.67\%  	|  10.00\%  	|  10.17\%  	|  10.00\%  	|   9.33\%  	|   9.00\%   	|

<!-- ![CodeT5: %PP as a Function of Beam Size](https://github.com/Anurag-Swarnim-Yadav/Security-Vulnerability-Repair/blob/main/CodeT5_Beam_Analysis/Beam_Analysis_No_Duplicates.png) -->

<img src="https://github.com/Anurag-Swarnim-Yadav/Security-Vulnerability-Repair/blob/main/CodeT5_Beam_Analysis/Beam_Analysis_No_Duplicates.png" alt="CodeT5: %PP as a Function of Beam Size" width="600" height="300"/>

**Note: The source code, dataset, model prediction output, train log, and test log files are under CodeT5_Beam_Analysis**


