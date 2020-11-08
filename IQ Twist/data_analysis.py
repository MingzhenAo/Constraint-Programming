# -*- coding: utf-8 -*-
"""
Created on Mon Oct 12 14:23:42 2020

@author: Mingzhen Ao
"""
"""
The script will print all data information for playing mode1.
In addition, all execution time will be saved to a excel file.
"""

import data_analysis_function as daf

print("For the 'start' difficulty:\n")
daf.get_solvedcases_coverage("start")
print(" ")
print("For the 'junior' difficulty:\n")
daf.get_solvedcases_coverage("junior")
print(" ")
print("For the 'expert' difficulty:\n")
daf.get_solvedcases_coverage("expert")
print(" ")
print("For the 'master' difficulty:\n")
daf.get_solvedcases_coverage("master")
print(" ")
print("For the 'wizard' difficulty:\n")
daf.get_solvedcases_coverage("wizard")
print(" ")
print("the overall data:\n")
daf.get_overall_solvedcases_coverage_createfile()
