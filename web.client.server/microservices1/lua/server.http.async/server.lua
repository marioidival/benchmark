-- @jeffotoni
-- sudo luarocks install copas

local copas = require("copas")
local http = require("socket.http")
local url = require("socket.url")
local ltn12 = require("ltn12")

local debugMode = false

local function getRemoteData()
    local response_body = {}
    local url = "http://localhost:3000/v1/avatar"
    local result, response_code, response_headers, response_status = http.request {
        url = url,
        method = "GET",
        sink = ltn12.sink.table(response_body),
    }
    return table.concat(response_body), response_code
end
local function onRequest(client)
    client:settimeout(10) -- Timeout de 10 segundos
    local request, error = client:receive('*l')

    if not request then
        print("Error receiving request:", error)
        client:close()
        return
    end

    local path = string.match(request, 'GET (.-) HTTP')

    if path == "/v1/user" then
        local data, code = getRemoteData()

        if code == 200 then
            client:send("HTTP/1.1 200 OK\r\nContent-Type: application/json\r\nContent-Length: " .. #data .. "\r\n\r\n")
            client:send(data)
        else
            client:send("HTTP/1.1 500 Internal Server Error\r\nContent-Type: text/plain\r\nContent-Length: 13\r\n\r\nFailed fetch.")
        end
    else
        client:send("HTTP/1.1 404 Not Found\r\nContent-Type: text/plain\r\nContent-Length: 9\r\n\r\nNot found.")
    end

    client:send("\r\n") -- Adicione essa linha para enviar o terminador de linha adequado
    client:close()
end

local server = socket.bind("localhost", 8080)
print("Server listening at http://localhost:8080")
print("\027[0;33m[GET]\027[0m \027[0;33m/v1/avatar\027[0m")

copas.addserver(server, onRequest)
copas.loop()

local function debugPrint(...)
    if debugMode then
        print(...)
    end
end
