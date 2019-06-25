## GET 
Messageの一覧を取得する.

### Example

#### Request
```
GET /api/v1/rooms/82/messages HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Content-Length: 0
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 484
Content-Type: application/json; charset=utf-8
ETag: W/"e7d747fcda8839d0e3dc06f789b864ea"
X-Request-Id: ecfc93c1-6ee3-4420-9333-3f1eaae25fc8
X-Runtime: 0.021575

[
  {
    "id": 257,
    "message": "50087ad79287d8655777",
    "user_id": 116,
    "room_id": 82,
    "created_at": "2019-06-26T05:00:40.000+09:00",
    "updated_at": "2019-06-26T05:00:40.000+09:00"
  },
  {
    "id": 258,
    "message": "79e29f471864fbff9c88",
    "user_id": 116,
    "room_id": 82,
    "created_at": "2019-06-26T05:00:40.000+09:00",
    "updated_at": "2019-06-26T05:00:40.000+09:00"
  },
  {
    "id": 259,
    "message": "804f0f60db521b2462e8",
    "user_id": 116,
    "room_id": 82,
    "created_at": "2019-06-26T05:00:40.000+09:00",
    "updated_at": "2019-06-26T05:00:40.000+09:00"
  }
]
```

## GET 
Get messaege.

### Example

#### Request
```
GET /api/v1/rooms/83/messages/260 HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Content-Length: 0
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 162
Content-Type: application/json; charset=utf-8
ETag: W/"be7adf8af4fb764adbb50f2da0f21735"
X-Request-Id: f0525bf9-6212-4063-be77-526d1098e604
X-Runtime: 0.001945

[
  {
    "id": 260,
    "message": "54ad0c3479892fbfe5d4",
    "user_id": 118,
    "room_id": 83,
    "created_at": "2019-06-26T05:00:40.000+09:00",
    "updated_at": "2019-06-26T05:00:40.000+09:00"
  }
]
```

## POST 
New message.

### Example

#### Request
```
POST /api/v1/rooms/84/messages HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Content-Length: 42
Content-Type: application/x-www-form-urlencoded
Host: www.example.com

message[message]=test&message[user_id]=120
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 144
Content-Type: application/json; charset=utf-8
ETag: W/"a6f0399267ccc090f1d8192a10732212"
X-Request-Id: ca25a1e8-7a6c-4294-8f9c-d0be307c40b2
X-Runtime: 0.031612

{
  "id": 266,
  "message": "test",
  "user_id": 120,
  "room_id": 84,
  "created_at": "2019-06-26T05:00:40.000+09:00",
  "updated_at": "2019-06-26T05:00:40.000+09:00"
}
```
