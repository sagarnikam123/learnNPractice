# pipeline.py

# import dataset
from sklearn import datasets
iris = datasets.load_iris()

x = iris.data
y = iris.target

# splitting datasets
from sklearn.cross_validation import train_test_split
x_train, x_test, y_train, y_test = train_test_split(x,y, test_size = .5)

# using Decision Tree
from sklearn import tree
decisionTree_classifier = tree.DecisionTreeClassifier()
decisionTree_classifier.fit(x_train, y_train)
predictions_decisionTree = decisionTree_classifier.predict(x_test)
#print "Predictions - Decision Tree : ",predictions_decisionTree

from sklearn.metrics import accuracy_score
print 'Accuracy score - Decision Tree : ',accuracy_score(y_test, predictions_decisionTree)


# using KNearest Neighbors
from sklearn.neighbors import KNeighborsClassifier
kNeighbors_classifier = KNeighborsClassifier()
kNeighbors_classifier.fit(x_train, y_train)
predictions_kNeighbors = kNeighbors_classifier.predict(x_test)
print 'Predictions - KNeighbors : ', predictions_kNeighbors
print 'Accuracy score - KNeighbors : ', accuracy_score(y_test, predictions_kNeighbors)
