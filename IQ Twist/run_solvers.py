# -*- coding: utf-8 -*-
"""
Created on Mon Oct 12 16:15:44 2020

@author: Mingzhen Ao
"""
from subprocess import STDOUT, check_output
import time

solvers = ["picat", "choco", "jacop", "Chuffed", "Yuck", "Or-tool", "Coin-bc", "Gurobi"]


def run_solvers(difficulty):
    """
    This function aims to use the 8 solvers in solvers list
    to solver the models for corresponding difficulty and log the results.

    Parameters
    ----------
    difficulty : String
        "start", "junior", "expert", "master" or "wizard"

    Returns
    -------
    None.

    """
    n = 1
    while n < 25:
        name = "model" + str(n) + ".mzn"
        for solver in solvers:
            file = open(
                difficulty
                + "/model"
                + str(n)
                + "/"
                + "model"
                + str(n)
                + solver
                + ".log",
                "w",
            )
            if solver == "picat":
                begin = time.time()
                command = (
                    "timeout 1800 picat interface/fzn_picat_sat.pi "
                    + difficulty
                    + "/model"
                    + str(n)
                    + "/model"
                    + str(n)
                    + ".fzn"
                )
            elif solver == "jacop":
                begin = time.time()
                command = (
                    "java -cp interface/jacop-4.7.0.jar org.jacop.fz.Fz2jacop "
                    + difficulty
                    + "/model"
                    + str(n)
                    + "/model"
                    + str(n)
                    + ".fzn"
                )
            elif solver == "choco":
                begin = time.time()
                command = (
                    "java -cp interface/choco-parsers-4.10.3-jar-with-dependencies.jar org.chocosolver.parser.flatzinc.ChocoFZN "
                    + difficulty
                    + "/model"
                    + str(n)
                    + "/model"
                    + str(n)
                    + ".fzn"
                )
            else:
                command = (
                    "timeout 1800 minizinc.exe --solver "
                    + solver
                    + " "
                    + difficulty
                    + "/model"
                    + str(n)
                    + "/"
                    + name
                    + " --output-time --sac"
                )
            try:
                text = check_output(command, stderr=STDOUT, timeout=1800, shell=True)
                text_string = text.decode(encoding="UTF-8")
                file.write(text_string)
                if (solver == "jacop") or (solver == "choco") or (solver == "picat"):
                    end = time.time()
                    file.write("the excute time:" + str(end - begin))
            except Exception:
                file.write("timeout-30minutes\n")
        n += 1


"""
The below codes aims to solver all models and log corresponding results
"""
run_solvers("start")
run_solvers("junior")
run_solvers("expert")
run_solvers("master")
run_solvers("wizard")
