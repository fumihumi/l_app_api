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
Content-Length: 432
Content-Type: application/json; charset=utf-8
ETag: W/"ee2583925a33649b9a6f42e5b39fd021"
X-Request-Id: 79bca422-bc33-4129-a476-0c64e10b2e21
X-Runtime: 0.007145

[
  {
    "id": 85,
    "name": "May the Force be with you.",
    "created_at": "2019-06-26T05:00:40.000+09:00",
    "updated_at": "2019-06-26T05:00:40.000+09:00"
  },
  {
    "id": 86,
    "name": "Toto, I've got a feeling we're not in Kansas anymore.",
    "created_at": "2019-06-26T05:00:40.000+09:00",
    "updated_at": "2019-06-26T05:00:40.000+09:00"
  },
  {
    "id": 87,
    "name": "Go ahead, make my day.",
    "created_at": "2019-06-26T05:00:40.000+09:00",
    "updated_at": "2019-06-26T05:00:40.000+09:00"
  }
]
```

## GET 
Get room.

### Example

#### Request
```
GET /api/v1/rooms/88 HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Content-Length: 0
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 136
Content-Type: application/json; charset=utf-8
ETag: W/"d9569a5147b550cf3e6407e7a56c0111"
X-Request-Id: a4ea80eb-669f-4e0a-b3cb-fc85df4e6355
X-Runtime: 0.006820

{
  "id": 88,
  "name": "Here's looking at you, kid.",
  "created_at": "2019-06-26T05:00:40.000+09:00",
  "updated_at": "2019-06-26T05:00:40.000+09:00"
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
ETag: W/"f347b4cbde75799a0a8fe5a4c97f6c3e"
X-Request-Id: 43854331-ff79-4151-9fc1-c3edad159e0a
X-Runtime: 0.017047

{
  "id": 89,
  "name": "test",
  "created_at": "2019-06-26T05:00:40.000+09:00",
  "updated_at": "2019-06-26T05:00:40.000+09:00"
}
```
