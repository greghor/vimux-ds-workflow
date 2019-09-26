
##{
import pandas as pd
from sklearn import datasets
import matplotlib.pyplot as plt
##}


##{
iris = datasets.load_iris()
df = pd.DataFrame(iris.data, columns=iris.feature_names)
df["target"] = iris.target
##}


df[["sepal length (cm)", "petal length (cm)"]].hist()




