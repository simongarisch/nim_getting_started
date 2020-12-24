# nim compile --run nimjson.nim
import json

let data = """
    {"username": "Bob"}
"""

let obj = json.parseJson(data)
assert obj.kind == json.JObject
assert obj["username"].kind == json.JString
assert obj["username"].str == "Bob"

echo obj["username"].str
