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
Content-Length: 451
Content-Type: application/json; charset=utf-8
ETag: W/"51d5e7c0c0f1b12b6399d047a7b8e678"
X-Request-Id: de45ea13-a142-4118-be91-a2267b62c7a2
X-Runtime: 0.005455

[
  {
    "id": 122,
    "name": "Miss Norah Huel",
    "nickname": "Schmidt",
    "created_at": "2019-06-26T05:00:40.000+09:00",
    "updated_at": "2019-06-26T05:00:40.000+09:00"
  },
  {
    "id": 123,
    "name": "Mrs. Preston McLaughlin",
    "nickname": "Carroll",
    "created_at": "2019-06-26T05:00:40.000+09:00",
    "updated_at": "2019-06-26T05:00:40.000+09:00"
  },
  {
    "id": 124,
    "name": "Delcie Schroeder",
    "nickname": "Kuhlman",
    "created_at": "2019-06-26T05:00:40.000+09:00",
    "updated_at": "2019-06-26T05:00:40.000+09:00"
  }
]
```

## GET 
Get user.

### Example

#### Request
```
GET /api/v1/users/125 HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Content-Length: 0
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 142
Content-Type: application/json; charset=utf-8
ETag: W/"3d1240bfd1e2abdfe9ce406a22fbd2a9"
X-Request-Id: 899b2b6c-b9c7-4363-979f-5f269b1a3e02
X-Runtime: 0.006589

{
  "id": 125,
  "name": "Birdie Labadie",
  "nickname": "Lowe",
  "created_at": "2019-06-26T05:00:40.000+09:00",
  "updated_at": "2019-06-26T05:00:40.000+09:00"
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
Content-Length: 133
Content-Type: application/json; charset=utf-8
ETag: W/"5d6dc12b986e3aa9904acb49f6a56455"
X-Request-Id: e305201d-d371-4414-8cfe-802356a281eb
X-Runtime: 0.018625

{
  "id": 126,
  "name": "test",
  "nickname": "test1",
  "created_at": "2019-06-26T05:00:40.000+09:00",
  "updated_at": "2019-06-26T05:00:40.000+09:00"
}
```
