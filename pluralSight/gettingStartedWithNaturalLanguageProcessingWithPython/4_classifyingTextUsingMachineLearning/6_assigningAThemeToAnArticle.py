# 6_Assigning a Theme to an Article

article = 'Facebook Inc. has been giving advertisers an inflated metric for the average time users spent watching a video, a measurement that may have helped boost marketer spending on one of Facebook’s most popular ad products. The company, owner of the world’s largest social network, only counts a video as "viewed" if it has been seen for more than 3 seconds. The metric it gave advertisers for their average video view time incorporated only the people who had watched the video long enough to count as a "view" in the first place, inflating the metric because it didn’t count anyone who didn’t watch, or watched for a shorter time. Facebook’s stock fell more than 1.5 percent in extended trading after the miscalculation was earlier reported in the Wall Street Journal. Facebook had disclosed the mistake in a posting on its advertiser help center web page several weeks ago. Big advertising buyers and marketers are upset about the inflated metric, and asked the company for more details, according to the report in the Journal, citing unidentified people familiar with the situation. The Menlo Park, California-based company has kept revenue surging in part because of enthusiasm for its video ads, which advertisers compare in performance to those on Twitter, YouTube and around the web.'

from sklearn.neighbors import KNeighborsClassifier
classifier = KNeighborsClassifier()
classifier.fit(x, km.labels_)

#test = vectorizer.transform([article.decode('utf-8').encode('ascii', errors='ignore')])
test = vectorizer.transform([article])
classifier.predict(test)

# by chaning no. of neighbors (try)
classifier = KNeighborsClassifier(n_neighbors=10)
classifier.fit(x, km.labels_)
classifier.predict(test)
