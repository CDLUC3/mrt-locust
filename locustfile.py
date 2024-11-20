from locust import HttpUser, task
from bs4 import BeautifulSoup
import os

class HelloWorldUser(HttpUser):
    @task
    def state(self):
        self.client.get("/state")
        self.client.get("/state.json")

    @task
    def navigation(self):
        self.client.get("/")
        self.client.get("/home/choose_collection")
        if "MERRITTUSER" in os.environ:
          self.client.get("/m/merritt_demo")
          self.client.get("/s/merritt_demo?terms=apple&group=merritt_demo&commit=Go")
          self.client.get("/m/ark%253A%252F99999%252Ffk4fv08g3k")
          self.client.get("/m/ark%253A%252F99999%252Ffk4fv08g3k/1")
          self.client.get("/api/presign-file/ark%253A%252F99999%252Ffk4fv08g3k/1/system%252Fmrt-erc.txt")
        else: 
          self.client.get("/m/merritt_demo_pub")
          self.client.get("/s/merritt_demo_pub?terms=apple&group=merritt_demo_pub&commit=Go")

    def on_start(self):
        #the following does not work with rails CSRF protection
        response = self.client.get("/")
        soup = BeautifulSoup(response.content, features="html.parser")
        auth = soup.findAll("meta", {"name": "csrf-token"})[0].get("content")
        if "MERRITTUSER" in os.environ:
          self.client.post("/login", json={"login": os.environ["MERRITTUSER"], "password": os.environ["MERRITTPASS"], "authenticity_token": auth})
        else:
          self.client.post("/guest_login", json={"authenticity_token": auth})
