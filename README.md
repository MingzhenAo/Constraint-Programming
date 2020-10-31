<img src="https://www.rainbowfun.com.au/assets/full/LL1630.jpg?20191026165205" width="400">
<img src="https://cdn.shopify.com/s/files/1/0075/3523/1012/products/SmartGames-ZigZagPuzzler-3_1024x1024.jpg?v=1595315047" width="400">

# Solving Puzzle Games with CSP solvers
The goal of this project is to model two puzzle games by building their constraint satisfaction problems (CSPs) and then compare the performances of different solvers to these CSPs.

The git repository is used to store some important files such as Minizinc files, contracts, report and so on.

Firstly, I'd like to introduce how to run different models. Secondly, five parts of the git repository (IQ Twist, Zig Zag Puzzler, Formalities, Literature and Report) will be introduced.

[[_TOC_]]

## How to compile the models?

All the models are created by Minizinc Language. So Minizinc IDE is necessary.

* For Windows, Minizinc IDE can be downloaded in https://www.minizinc.org/. After Minizinc IDE has been installed successfully, there are two ways to run the models.
   * Users just need to open the Minizinc file and run it. 
   <br />For example, if a user wants to run the model1 in the start level of IQ Twist, the user needs to open the folder "...\project-2020-s2-puzzle-constraints\IQtwist\start\model1", then the user can open the "model1.mzn" file.
   <br /><img src="https://scontent.fcbr1-1.fna.fbcdn.net/v/t1.0-9/122960098_1153314758403039_1749945961259741318_n.jpg?_nc_cat=100&ccb=2&_nc_sid=730e14&_nc_ohc=Qk3tP7zb2CMAX9ibU6X&_nc_ht=scontent.fcbr1-1.fna&oh=f72389009adc09b64a4c2543a323c0f6&oe=5FC26C67" width="400" >
         <img src="https://scontent.fcbr1-1.fna.fbcdn.net/v/t1.0-9/123167070_1153314791736369_984035643482497166_n.jpg?_nc_cat=104&ccb=2&_nc_sid=730e14&_nc_ohc=i1cTc-TGk8cAX-k1QHa&_nc_ht=scontent.fcbr1-1.fna&oh=27009a734a4b950ada572cba973c7380&oe=5FC2D25C" width="400" ><br />
         After the user open the "model1.mzn", there is a button to run the model. On the right of the button, the user can choose different solvers.

   * Users can run the model by command prompt. The usage of the command is "minizinc [<option>] [-I <include path>]  <model>.mzn [<data>.dzn ...] or just <flat>.fzn".
     For example, if the user want to execute the same model above, he or she can inputs "minizinc --solver chuffed ...\project-2020-s2-puzzle-constraints\IQTwist\start\model1\model1.mzn" in command prompt.

* For Linux, Minizinc IDE can be installed by inputing the commands below in terminal

         sudo apt update
         sudo apt install snapd
         sudo snap install minizinc --classic

  Then users can run the model by terminal. The usage of the command is "minizinc [<option>] [-I <include path>]  <model>.mzn [<data>.dzn ...] or just <flat>.fzn".
  Similar to Windows, if a user wants to run the model1 in the start level of IQ Twist, he or she can inputs "minizinc --solver chuffed ...\project-2020-s2-puzzle-constraints\IQTwist\start\model1\model1.mzn" in terminal.

## IQ Twist
All the experiments and corresponding scripts about IQ Twist has been stored in it.
* start, junior, expert, master and wizard

  The names represent different difficulties. Each of them contains 24 folders that name as model1, model2 and so on. 
  There is a total of 120 folders that represent the 120 problems in IQ Twist booklet. 
  For each folder, there is corresponding Minizinc file (.mzn), Flatzinc file (.fzn), (.ozn) and other 9 log files that log the result of each solver.
  The Flatzinc file is a bridge for the Minizinc to connect with other solvers. And the (.ozn) file is a byproduct in the process of transferring Minizinc file to Flatzinc file, it can be deleted after Flatzinc has been created.
* CSPmodel.mzn

  Encoding for the general model, which is used to combine the encoding of pegs' position information in create_models.py to make up each problem in the booklet.
* create_models.py

  This is a python script that saves all the pegs' position information. 
  Meanwhile, based on the encoding of pegs' positions and the general model in CSPmodel.mzn, all the problems were created by this script.
* data_analysis.py

  This function aims to call the functions in data_analysis_function.py to get all the data information that I will use in the evaluation part of my thesis.
* data_analysis_function.py

  The python file is used to save the functions that achieve the goals in my evaluation part of my thesis.
* data_analysis.xlsx

  An excel file that stores all the data and corresponding figures that I may use in the evaluation part of my thesis.
* run_izplus.py

  A script is used to run the izplus solver for all models. I separately create a script for it because izplus is based on docker.
* run_sovlers.py

  A script is used to run all other eight solvers except izplus for all models. 

* interface 

  A file saves some interfaces that will be used for some solvers.
## Zig Zag Puzzler
All the experiments and corresponding scripts about Zig Zag Puzzler has been stored in it.
* playingmode1 and playingmode2

  They corresponds to two playing mode2. Each of them consists of 5 folders: start, junior, expert, master and wizard.Each folder has 8 folders that are named as model1, model2 and so on. 
  There is a total of 80 folders that represent 80 problems in Zig Zag Puzzler booklet.
  For each folder, there is corresponding Minizinc file (.mzn), Flatzinc file (.fzn), (.ozn) and other 9 log files that log the result of each solver.
  The Flatzinc file is a bridge for the Minizinc to connect with other solvers. And the (.ozn) file is a byproduct in the process of transferring Minizinc file to Flatzinc file, it can be deleted after Flatzinc has been created.
* piececonstraints

  This file saves general constraints for each piece.

* CSPmodel.mzn and CSPmodelmode2.mzn

  Encoding for the general models of playing mode1 and 2.
  CSPmodel.mzn is used to combine the encoding of placed pieces' information in create_mode1_models.py to make up each problem in the playing mode1 booklet.
  CSPmodelmode2.mzn is used to combine the encoding of placed pieces' information in create_mode2_start.py, create_mode2_junior, create_mode2_expert, create_mode2_master and create_mode2_wizard to make up each problem in the playing mode1 booklet.
* playingmode1_data_analysis.py, playingmode1_data_analysis_function, playingmode2_data_analysis and playingmode2_data_analysis_function

  All of them are used to analyse data for both playing mode1 and 2.

* data_analysismode1.xlsx and data_analysismode2.xlsx

  Each of them saves all the figures and data information that are used or may used in my thesis.
* run_izplus.py

  A script is used to run the izplus solver for all models. I separately create a script for it because izplus is based on docker.
* run_sovlers.py

  A script is used to run all other eight solvers except izplus for all models. 
* interface

  A file saves some interfaces that will be used for some solvers. 
## Formalities
This file mainly saves the contracts, which describe the learning objective, project description and assessment.
## Literature
In addition, many papers that I have used or might be used has been saved in the "literature".
## Report
This part saves my report which can be compiled by latex.

