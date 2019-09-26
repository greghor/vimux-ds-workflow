
##{
import pandas as pd
from sklearn import datasets
import matplotlib.pyplot as plt
##}

#bad, bad, bad practice to store data on github
data_dir = "https://github.com/greghor/vimux-ds-workflow/tree/master/data/"

##{
clients = pd.read_csv(data_dir + "clients.csv")
iris = datasets.load_iris()
df = pd.DataFrame(iris.data, columns=iris.feature_names)
df["target"] = iris.target
##}


df[["sepal length (cm)", "petal length (cm)"]].hist()




