import numpy as np
from sklearn.datasets import load_iris
from sklearn import tree

# loading dataset
iris = load_iris()
# defining test dataset(index)
test_idx = [0, 50, 100]

# training data
train_target = np.delete(iris.target, test_idx)
train_data = np.delete(iris.data, test_idx, axis = 0)

# testing data
test_target = iris.target[test_idx]
test_data = iris.data[test_idx]

# classifier
clf = tree.DecisionTreeClassifier()
clf.fit(train_data, train_target)

print test_target
print clf.predict(test_data)

# viz code (Visualizing decision tree)
from sklearn.externals.six import StringIO
import pydot
dot_data = StringIO()
tree.export_graphviz(clf,
                        out_file = dot_data,
                        feature_names = iris.feature_names,
                        class_names = iris.target_names,
                        filled = True, rounded = True,
                        impurity =  False   )

graph = pydot.graph_from_dot_data(dot_data.getvalue())
graph.write_pdf('iris.pdf')

print iris.feature_names, iris.target_names
print ' -- Test data -- '
print 'Test - 1 ' , test_data[0], test_target[0]
print 'Test - 2 ' , test_data[1], test_target[1]
print 'Test - 3 ' , test_data[2], test_target[2]
