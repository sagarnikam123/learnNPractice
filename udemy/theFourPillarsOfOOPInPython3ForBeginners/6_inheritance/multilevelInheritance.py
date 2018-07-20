class MusicalInstrument:
    numberOfMajorKeys = 12

class StringInstruments(MusicalInstrument):
    typeOfWood = "Tonewood"

class Guitar(StringInstruments):
    def __init__(self):
        self.numbeOfStrings = 6
        print("This guitar consists of {} strings. It is made of {} and it can play {} keys.".format(self.numbeOfStrings, self.typeOfWood, self.numberOfMajorKeys))

guitar = Guitar()
