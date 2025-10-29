import requests


def SampleRecord():
    r = requests.get('http://uinames.com/api?ext&region=United%20States',
                     timeout=2.0)
    # 1. Add a line of code here to decode JSON from the response.
    blueShore = r.json()
    return 'My name is {} {} and the PIN on my card is {}.'.format(
        # 2. Add the correct fields from the JSON data structure.
        blueShore['name'], blueShore['surname'], blueShore['credit_card']['pin']
    )


if __name__ == '__main__':
    print(SampleRecord())
