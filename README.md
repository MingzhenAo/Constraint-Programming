<img src="https://www.rainbowfun.com.au/assets/full/LL1630.jpg?20191026165205" width="400">
<img src="https://cdn.shopify.com/s/files/1/0075/3523/1012/products/SmartGames-ZigZagPuzzler-3_1024x1024.jpg?v=1595315047" width="400">

# Solving Puzzle Games with CSP solvers
The goal of this project is to model two puzzle games based on CSPs and compare the performances of different solvers. 

The git repository is used to store some important files such as Minizinc files, contracts, report and so on.
The git repository mainly consists of five parts, IQ Twist, Zig Zag Puzzler, Formalities, Literature and Report. In addition, there is further Information to support the user get more online information that related to our project. 

[[_TOC_]]
## IQ Twist
All the experiments and corresponding scripts about IQ Twist has been stored in it.
* CSPmodel.mzn

  The general model, which used to combine the pegs' position information in create_models.py
* create_models.py

  This is a python script that saves all the pegs' position information. 
  Meanwhile, based on the information of pegs' positions and the general model in CSPmodel.mzn, all the models were created by this script.
* data_analysis.py

  This function aims to call the functions in data_analysis_function.py to get all the data information that I have used in the thesis.

* data_analysis_function.py

  The python file is used to save the functions that achieve the goals of my evaluation part.
* data_analysis.xlsx

  An excel file that stores all the data and corresponding figures that I may use in the evaluation part of my thesis.
* run_izplus.py

  A script is used to run the izplus solver for all models. I separatedly create a script for it because izplus is based on docker hub.
* run_sovlers.py

  A script is used to run all other eight solvers except izplus for all models. 

* interface 

  A file save some interfaces that will be used for some solvers.
* start, junior, expert, master and wizard

  The names represent different difficulties. Each of them contains 24 files that name as model1, model2 and so on. 
  For each of these file, there are correspondings Minizinc (.mzn) file, Flatzinc (.fzn) file, .ozn file. And other 9 log files to log the result of each solver.  

## Zig Zag Puzzler
All the experiments and corresponding scripts about IQ Twist has been stored in it.
## Formalities
This file mainly save the contracts, which describe the learning objective, project description and assessment.
## Literature
In addition, many papers that I have used or might be used has been saved in the "literature".
## Report
This part saves my report which can be compiled by latex.
## Further Information
