## GET 
Userの一覧を取得する.

### Example

#### Request
```
GET /api/v1/users HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Content-Length: 0
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 433
Content-Type: application/json; charset=utf-8
ETag: W/"59e2544bad703be02965b6e6c2f9f6ca"
X-Request-Id: 23ccc8a6-9185-4508-9b11-111fc091417b
X-Runtime: 0.003684

[
  {
    "id": 77,
    "name": "Soila Dietrich",
    "nickname": "Green",
    "created_at": "2019-06-26T04:48:29.000+09:00",
    "updated_at": "2019-06-26T04:48:29.000+09:00"
  },
  {
    "id": 78,
    "name": "Anamaria Thompson",
    "nickname": "Barton",
    "created_at": "2019-06-26T04:48:29.000+09:00",
    "updated_at": "2019-06-26T04:48:29.000+09:00"
  },
  {
    "id": 79,
    "name": "Dina Legros",
    "nickname": "Hackett",
    "created_at": "2019-06-26T04:48:29.000+09:00",
    "updated_at": "2019-06-26T04:48:29.000+09:00"
  }
]
```

## GET 
Get user.

### Example

#### Request
```
GET /api/v1/users/80 HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Content-Length: 0
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 146
Content-Type: application/json; charset=utf-8
ETag: W/"96ee369a23fd9a4ddc9326597d9187c0"
X-Request-Id: f6710200-479d-42d0-a3d2-97956250ab1d
X-Runtime: 0.009594

{
  "id": 80,
  "name": "Lera Schneider",
  "nickname": "Romaguera",
  "created_at": "2019-06-26T04:48:29.000+09:00",
  "updated_at": "2019-06-26T04:48:29.000+09:00"
}
```

## POST 
New user.

### Example

#### Request
```
POST /api/v1/users HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Content-Length: 36
Content-Type: application/x-www-form-urlencoded
Host: www.example.com

user[name]=test&user[nickname]=test1
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 132
Content-Type: application/json; charset=utf-8
ETag: W/"518eeef56bdd2a7f68716f6fd948c19f"
X-Request-Id: 058fd0f2-90ad-4d82-b709-85e919247bd7
X-Runtime: 0.015710

{
  "id": 81,
  "name": "test",
  "nickname": "test1",
  "created_at": "2019-06-26T04:48:29.000+09:00",
  "updated_at": "2019-06-26T04:48:29.000+09:00"
}
```
