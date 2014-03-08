pomorodo
========

# Installation

### Secret key
1. Generate a key with os.urandom(24)
2. Replace "SECRET_KEY='SECRETKEY'" in configuration with new key

### Create user in database manually
1. Add entry for username and password (TODO: User management)

### Run with Python or Gunicorn
* python server.py (or web.py)
* gunicorn -w 4 -b 0:0:0:0:{port} server:app (or web:app)

# Server API

**PUSH /login** with **user={username}, pass={password}** - Creates session with cookie.

**PUSH /logout** - Ends session

**GET /start?time={timestamp}** - Starts pomodoro at time, returns pomodoroID

**PUSH /end** with **id={pomodoroID}, time={timestamp}** - Ends pomodoro at time
