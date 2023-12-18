import os
from dotenv import load_dotenv

load_dotenv()

MODE = os.getenv('MODE', 'production')
IS_DEV = True if MODE == 'development' else False
PORT = int(os.getenv('PORT', 5000))
