
##{
import pandas as pd
from sklearn import datasets
import matplotlib.pyplot as plt
import pdb
##}


##{
iris = datasets.load_iris()
df = pd.DataFrame(iris.data, columns=iris.feature_names)
##}

df["target"] = iris.target

df["sepal ratio"] = df["sepal length(cm)"]/df["sepal width (cm)"]



