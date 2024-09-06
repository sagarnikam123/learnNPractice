import logging

# 2024-09-06 17:50 - ERROR - Soething went wrong!
logging.basicConfig(
    format="{asctime} - {levelname} - {message}",
    style="{",
    datefmt="%Y-%m-%d %H:%M"
)

logging.error("Soething went wrong!")
