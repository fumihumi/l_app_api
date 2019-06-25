## GET 
Messageの一覧を取得する.

### Example

#### Request
```
GET /api/v1/rooms/52/messages HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Content-Length: 0
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 2
Content-Type: application/json; charset=utf-8
ETag: W/"4f53cda18c2baa0c0354bb5f9a3ecbe5"
X-Request-Id: fa422875-dd94-4d3d-b83f-36c050b9c9fe
X-Runtime: 0.008498

[

]
```

## GET 
Get messaege.

### Example

#### Request
```
GET /api/v1/rooms/53/messages/122 HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Content-Length: 0
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 161
Content-Type: application/json; charset=utf-8
ETag: W/"3811316320195d39e265496a404e8b32"
X-Request-Id: d8f817e2-e711-46c0-8cde-dea5531a2abd
X-Runtime: 0.002286

[
  {
    "id": 122,
    "message": "7bf9d6abd8c90a7ad9ef",
    "user_id": 73,
    "room_id": 53,
    "created_at": "2019-06-26T04:48:29.000+09:00",
    "updated_at": "2019-06-26T04:48:29.000+09:00"
  }
]
```

## POST 
New message.

### Example

#### Request
```
POST /api/v1/rooms/54/messages HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Content-Length: 41
Content-Type: application/x-www-form-urlencoded
Host: www.example.com

message[message]=test&message[user_id]=75
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 143
Content-Type: application/json; charset=utf-8
ETag: W/"1eb6721ed7be892852923ca8a3e7a322"
X-Request-Id: 72d406bf-e0e6-4d37-90f5-310b5a1725d9
X-Runtime: 0.010961

{
  "id": 132,
  "message": "test",
  "user_id": 75,
  "room_id": 54,
  "created_at": "2019-06-26T04:48:29.000+09:00",
  "updated_at": "2019-06-26T04:48:29.000+09:00"
}
```
