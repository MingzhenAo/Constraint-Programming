<img src="https://www.rainbowfun.com.au/assets/full/LL1630.jpg?20191026165205" width="400">
<img src="https://cdn.shopify.com/s/files/1/0075/3523/1012/products/SmartGames-ZigZagPuzzler-3_1024x1024.jpg?v=1595315047" width="400">

# Solving Puzzle Games with CSP solvers
The goal of this project is to model two puzzle games by building their constraint satisfaction problems (CSPs) and then compare the performances of different solvers to these CSPs.

The git repository is used to store some important files such as Minizinc files, contracts, report and so on.

Firstly, I'd like to introduce how to run different models. Secondly, five parts of the git repository (IQ Twist, Zig Zag Puzzler, Formalities, Literature and Report) will be introduced.

[[_TOC_]]

## How to compile the models?

All the models are created by Minizinc Language. So Minizinc IDE is necessary.

For Windows, Minizinc IDE can be dowmloaded in https://www.minizinc.org/. After Minizinc IDE has been downloaded successfully, there are two ways to run the models.
* users just need to open the Minizinc file and run it. 
       For example, 
                  <img src="https://scontent.fcbr1-1.fna.fbcdn.net/v/t1.0-9/123163316_1153300315071150_7770441035475772253_n.jpg?_nc_cat=110&ccb=2&_nc_sid=730e14&_nc_ohc=ZWGCrG6TXJYAX8IGH_p&_nc_ht=scontent.fcbr1-1.fna&oh=f9b06b1e6346c879a1095f6d7f798933&oe=5FC1FEF9" width="300">
                        













## IQ Twist
All the experiments and corresponding scripts about IQ Twist has been stored in it.
* start, junior, expert, master and wizard

  The names represent different difficulties. Each of them contains 24 files that name as model1, model2 and so on. 
  For each of these files, there are correspondings Minizinc (.mzn) file, Flatzinc (.fzn) file, (.ozn) file and other 9 log files to log the result of each solver.
  The Flatzinc file is a bridge for the Minizinc to connect with other solvers. And the (.ozn) file is a byproduct in the process of transferring Minizinc file to Flatzinc file, it can be deleted after Flatzinc has been created.
* CSPmodel.mzn

  Encoding for the general model, which is used to combine the encoding of pegs' position information in create_models.py to make up each problem in the booklet.
* create_models.py

  This is a python script that saves all the pegs' position information. 
  Meanwhile, based on the encoding of pegs' positions and the general model in CSPmodel.mzn, all the problems were created by this script.
* data_analysis.py

  This function aims to call the functions in data_analysis_function.py to get all the data information that I will use in evaluation part of my thesis.
* data_analysis_function.py

  The python file is used to save the functions that achieve the goals in my evaluation part of my thesis.
* data_analysis.xlsx

  An excel file that stores all the data and corresponding figures that I may use in the evaluation part of my thesis.
* run_izplus.py

  A script is used to run the izplus solver for all models. I separatedly create a script for it because izplus is based on docker hub.
* run_sovlers.py

  A script is used to run all other eight solvers except izplus for all models. 

* interface 

  A file save some interfaces that will be used for some solvers.
## Zig Zag Puzzler
All the experiments and corresponding scripts about Zig Zag Puzzler has been stored in it.
## Formalities
This file mainly save the contracts, which describe the learning objective, project description and assessment.
## Literature
In addition, many papers that I have used or might be used has been saved in the "literature".
## Report
This part saves my report which can be compiled by latex.

