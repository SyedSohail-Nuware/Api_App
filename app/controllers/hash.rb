def display
  @hash = []
  @res = [{
    "id": 1,
    "name": "syed",
    "email": "syed@gmail.com",
    "password_digest": "$2a$12$P9ZgofA3VQX0ojEC4ElIouvYX0BcSFpfeMVWZ2zyY8SSBtg/qxXPG",
    "created_at": "2022-08-01T09:39:39.914Z",
    "updated_at": "2022-08-01T09:39:39.914Z"
},
{
    "id": 2,
    "name": "sushmita",
    "email": "sush@gmail.com",
    "password_digest": "$2a$12$GvO8VnuqpL2DtT5aVNYlEe7FUOQWzdvlO2N8JE9sx1pUZY972C6cm",
    "created_at": "2022-08-01T09:40:15.950Z",
    "updated_at": "2022-08-01T09:40:15.950Z"
},
{
    "id": 3,
    "name": "loki",
    "email": "loki@gmail.com",
    "password_digest": "$2a$12$hUK/7ct86qxEmMdJKN.wK.bEREE117HrBfoJ/oYT1aHxdLDH3QBQq",
    "created_at": "2022-08-01T09:40:39.086Z",
    "updated_at": "2022-08-01T09:40:39.086Z"
},
{
    "id": 4,
    "name": "veena",
    "email": "veena@numi.com",
    "password_digest": "$2a$12$sLMDEIyyRodWILksVLfW3O7.Q1de4U43RyC952JZNNJi2JJMBb6TG",
    "created_at": "2022-08-02T10:55:06.753Z",
    "updated_at": "2022-08-02T10:55:06.753Z"
},
{
    "id": 5,
    "name": "Vibha",
    "email": "vibha@gmail.com",
    "password_digest": "$2a$12$AY/bufuKLTtcC1UCqxW2kuG9jWLnMnUM.C4EjFxtKVy81QXYRpB9O",
    "created_at": "2022-08-03T06:14:21.631Z",
    "updated_at": "2022-08-03T06:14:21.631Z"
},
{
    "id": 7,
    "name": "harshi",
    "email": "harshi@gmail.com",
    "password_digest": "$2a$12$Lk0047/acotyrH5ETKhdKO7PlbNPaRLb/AEPIVFWMyMwqfhIUarnO",
    "created_at": "2022-08-03T06:22:04.770Z",
    "updated_at": "2022-08-03T06:22:04.770Z"
}]

6.times do |i|
  hash[i] << @res[i]
end
puts (hash)

# puts (res.length)

end

display