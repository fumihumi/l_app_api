## GET 
Roomの一覧を取得する.

### Example

#### Request
```
GET /api/v1/rooms HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Content-Length: 0
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 447
Content-Type: application/json; charset=utf-8
ETag: W/"64fcf96a58c112465f2d076aa8236eeb"
X-Request-Id: 0cd5bbaf-dc1f-49bf-bed9-0d9d0fc4efd0
X-Runtime: 0.003740

[
  {
    "id": 55,
    "name": "Here's looking at you, kid.",
    "created_at": "2019-06-26T04:48:29.000+09:00",
    "updated_at": "2019-06-26T04:48:29.000+09:00"
  },
  {
    "id": 56,
    "name": "I love the smell of napalm in the morning.",
    "created_at": "2019-06-26T04:48:29.000+09:00",
    "updated_at": "2019-06-26T04:48:29.000+09:00"
  },
  {
    "id": 57,
    "name": "I'm going to make him an offer he can't refuse.",
    "created_at": "2019-06-26T04:48:29.000+09:00",
    "updated_at": "2019-06-26T04:48:29.000+09:00"
  }
]
```

## GET 
Get room.

### Example

#### Request
```
GET /api/v1/rooms/58 HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Content-Length: 0
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 163
Content-Type: application/json; charset=utf-8
ETag: W/"ace2009881780aea14b4bbb8f7527ffa"
X-Request-Id: e450e594-0439-4eae-a835-a3b4878542e8
X-Runtime: 0.014424

{
  "id": 58,
  "name": "Fasten your seatbelts. It's going to be a bumpy night.",
  "created_at": "2019-06-26T04:48:29.000+09:00",
  "updated_at": "2019-06-26T04:48:29.000+09:00"
}
```

## POST 
New room.

### Example

#### Request
```
POST /api/v1/rooms HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Content-Length: 15
Content-Type: application/x-www-form-urlencoded
Host: www.example.com

room[name]=test
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 113
Content-Type: application/json; charset=utf-8
ETag: W/"9e262910e19f6da07491dec05be864e7"
X-Request-Id: 36164875-f75e-43d5-a98f-980cb4a40713
X-Runtime: 0.005018

{
  "id": 59,
  "name": "test",
  "created_at": "2019-06-26T04:48:29.000+09:00",
  "updated_at": "2019-06-26T04:48:29.000+09:00"
}
```
