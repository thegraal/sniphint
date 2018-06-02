import threading, collections

class QLock:
    def __init__(self):
        self.lock = threading.Lock()
        self.waiters = collections.deque()
        self.count = 0

    def acquire(self):
        self.lock.acquire()
        if self.count:
            new_lock = threading.Lock()
            new_lock.acquire()
            self.waiters.append(new_lock)
            self.lock.release()
            new_lock.acquire()
            self.lock.acquire()
        self.count += 1
        self.lock.release()

    def release(self):
        with self.lock:
            if not self.count:
                raise ValueError("lock not acquired")
            self.count -= 1
            if self.waiters:
                self.waiters.popleft().release()

    def locked(self):
        return self.count > 0
        
        
  # test
  
  
  def work(name):
    qlock.acquire()
    acqorder.append(name)

from time import sleep
if 0:
    qlock = threading.Lock()
else:
    qlock = QLock()
qlock.acquire()
acqorder = []
ts = []
for name in "ABCDEFGHIJKLMNOPQRSTUVWXYZ":
    t = threading.Thread(target=work, args=(name,))
    t.start()
    ts.append(t)
    sleep(0.1) # probably enough time for .acquire() to run
for t in ts:
    while not qlock.locked():
        sleep(0)  # yield time slice
    qlock.release()
for t in ts:
    t.join()
assert qlock.locked()
qlock.release()
assert not qlock.locked()
print "".join(acqorder)


# from https://stackoverflow.com/questions/19688550/how-do-i-queue-my-python-locks
