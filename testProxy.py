import requests

proxies = {
    "http": "http://user:userPass123@localhost:8888",
    "https": "http://user:userPass123@localhost:8888",
}

print(requests.get("https://api.ha1fdan.xyz", proxies=proxies).json())