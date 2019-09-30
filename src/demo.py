
##{
import pandas as pd
from sklearn import datasets
import matplotlib.pyplot as plt
%matplotlib qt
##}


##{
iris = datasets.load_iris()
df = pd.DataFrame(iris.data, columns=iris.feature_names)
##}

df["target"] = iris.target
categories = df["target"].unique()

df["sepal ratio"] = df["sepal length (cm)"]/df["sepal width (cm)"]



