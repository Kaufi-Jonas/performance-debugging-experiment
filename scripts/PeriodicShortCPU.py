import sys
import random
import hashlib
import time
import string

length = int(sys.argv[1])
minTimeToSleep = int(sys.argv[2])
maxTimeToSleep = int(sys.argv[3])

letters = string.ascii_letters

while(True):
    time.sleep(random.randrange(minTimeToSleep, maxTimeToSleep))

    text = ''.join(random.choice(letters) for i in range(length))
    hashed = hashlib.sha256(text.encode('utf-8')).hexdigest()
    print(hashed)
    