from sklearn.datasets import load_iris

# loading dataset
iris = load_iris()
# printnig metadata for dataset
print "Feature names - %s" % iris.feature_names
print "Label names - %s" % iris.target_names
print "Length of dataset - %d" % len(iris.data)


# looking single simple
# setos - 0
# versicolor - 1
# verginica - 2
print "\n single sample data --> "
print "Feature - ", iris.data[0]
print "Label - ", iris.target[0]
print "\n"

# printing all datasets
for i in range(len(iris.target)):
        print "Example %d: lable %s, features %s" % (i+1, iris.target[i], iris.data[i])
