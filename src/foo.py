
##{
import pandas as pd
from sklearn import datasets
import matplotlib.pyplot as plt
import pdb
##}

data_dir = "https://raw.githubusercontent.com/greghor/vimux-ds-workflow/master/data/"

##{ storing data on github is a bad, bad, bad practice.
clients = pd.read_csv(data_dir + "clients.csv", sep=";")
contracts = pd.read_csv(data_dir + "contracts.csv", sep=";")
##}

##{
try:
    business_contract_rate = contracts["is_b2b"].mean()
except:
    pdb.set_trace()
##}


