#rust hyper

Abaixo o melhor resultado encontrado para o Rust usando framework Hyper.

#### Criar imagem do Serviço 
Foi criado o Dockerfile para que possamos subir 

```bash
$ docker build -f Dockerfile --no-cache -t jeffotoni/m1rusthyper .
Sending build context to Docker daemon  296.9MB
Step 1/12 : FROM rust:1.67.0 as builder
1.67.0: Pulling from library/rust
699c8a97647f: Pull complete 
86cd158b89fd: Pull complete 
a226e961cfaa: Pull complete 
4cec535da207: Pull complete 
225fdd30e1a3: Pull complete 
203d59dc0d36: Pull complete 

```

#### Executar nossa imagem

Agora vamos abrir a porta e executar nosso microservice

```bash
$ docker run --name rust.server.hype --rm -p 3000:3000 jeffotoni/m1rusthyper
Listening on http://0.0.0.0:3000
```

#### cURL 

Irá apresentar uma lista de avatar com suas imagens e nomes.

```bash
$ curl -i -XGET http://localhost:3000/v1/avatar
HTTP/1.1 200 OK
content-type: application/json
engine: Rust/Hype
location: /v1/avatar
date: 2023-04-21T12:40:19.925350124+00:00
content-length: 3696

[{ "createdAt": "2023-04-21T12:40:19.925Z", "name":"BillyStoltenberg","avatar":"https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/1164.jpg","id":"1" } , { "createdAt":"2022-11-05T09:01:38.207Z","name":"JodiKertzmann","avatar":"https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/502.jpg","id":"2" } , { "createdAt":"2022-11-05T15:36:31.390Z","name":"AngelKuhlmanIV","avatar":"https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/75.jpg","id":"3" } , { "createdAt":"2022-11-04T19:23:42.344Z","name":"KellyNolan","avatar":"https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/787.jpg","id":"4" } , { "createdAt":"2022-11-05T06:33:55.777Z","name":"JeremySchneider","avatar":"https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/1153.jpg","id":"5" } , { "createdAt":"2022-11-05T07:29:47.957Z","name":"EvanDuBuque","avatar":"https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/99.jpg","id":"6" } , { "createdAt":"2022-12-01T10:43:35.133Z","name":"DeloresDoyle","avatar":"https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/331.jpg","id":"7" } , { "createdAt":"2022-12-01T22:53:22.031Z","name":"Ms.JeremyBruen","avatar":"https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/383.jpg","id":"8" } , { "createdAt":"2022-12-02T00:59:05.444Z","name":"JoannRitchie","avatar":"https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/130.jpg","id":"9" } , { "createdAt":"2022-12-01T21:37:21.680Z","name":"Mrs.StevenCummerata","avatar":"https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/771.jpg","id":"10" } , { "createdAt":"2022-12-02T09:01:39.388Z","name":"HattiePfeffer","avatar":"https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/1005.jpg","id":"11" } , { "createdAt":"2022-12-01T10:11:38.831Z","name":"EdithMacejkovic","avatar":"https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/882.jpg","id":"12" } , { "createdAt":"2022-12-02T08:34:12.087Z","name":"BettyBlock","avatar":"https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/216.jpg","id":"13" } , { "createdAt":"2022-12-02T06:56:11.901Z","name":"ArmandoBecker","avatar":"https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/822.jpg","id":"14" } , { "createdAt":"2022-12-01T17:22:36.489Z","name":"MargueriteWilliamson","avatar":"https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/205.jpg","id":"15" } , { "createdAt":"2022-12-02T02:59:48.845Z","name":"LorenePaucek","avatar":"https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/31.jpg","id":"16" } , { "createdAt":"2022-12-01T22:23:37.039Z","name":"TonyaHeidenreich","avatar":"https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/685.jpg","id":"17" } , { "createdAt":"2022-12-01T15:55:35.929Z","name":"MissAntoniaReynolds","avatar":"https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/208.jpg","id":"18" } , { "createdAt":"2022-12-01T14:15:27.068Z","name":"Ms.GlendaSchimmel","avatar":"https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/145.jpg","id":"19" } , { "createdAt":"2022-12-01T17:29:53.880Z","name":"JodySchadenDDS","avatar":"https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/35.jpg","id":"20" }]
```

### 90 segundos

```bash
k6 run -d 90s -u 100 k6/script-get.js

          /\      |‾‾| /‾‾/   /‾‾/   
     /\  /  \     |  |/  /   /  /    
    /  \/    \    |     (   /   ‾‾\  
   /          \   |  |\  \ |  (‾)  | 
  / __________ \  |__| \__\ \_____/ .io

  execution: local
     script: k6/script-get.js
     output: -

  scenarios: (100.00%) 1 scenario, 100 max VUs, 2m0s max duration (incl. graceful stop):
           * default: 100 looping VUs for 1m30s (gracefulStop: 30s)


running (1m30.0s), 000/100 VUs, 3661233 complete and 0 interrupted iterations
default ✓ [======================================] 100 VUs  1m30s

     data_received..................: 14 GB   154 MB/s
     data_sent......................: 458 MB  5.1 MB/s
     http_req_blocked...............: avg=2.17µs  min=665ns    med=1.46µs  max=38.99ms p(90)=1.85µs  p(95)=2.13µs 
     http_req_connecting............: avg=119ns   min=0s       med=0s      max=37.77ms p(90)=0s      p(95)=0s     
     http_req_duration..............: avg=2.39ms  min=133.48µs med=2.2ms   max=40.98ms p(90)=4.02ms  p(95)=4.81ms 
       { expected_response:true }...: avg=2.39ms  min=133.48µs med=2.2ms   max=40.98ms p(90)=4.02ms  p(95)=4.81ms 
     http_req_failed................: 0.00%   ✓ 0            ✗ 3661233
     http_req_receiving.............: avg=29.23µs min=8.17µs   med=19.05µs max=12.71ms p(90)=25.41µs p(95)=31.01µs
     http_req_sending...............: avg=10.45µs min=3.48µs   med=7.25µs  max=37.84ms p(90)=8.82µs  p(95)=10.14µs
     http_req_tls_handshaking.......: avg=0s      min=0s       med=0s      max=0s      p(90)=0s      p(95)=0s     
     http_req_waiting...............: avg=2.35ms  min=113.75µs med=2.17ms  max=38.77ms p(90)=3.98ms  p(95)=4.76ms 
     http_reqs......................: 3661233 40679.059122/s
     iteration_duration.............: avg=2.44ms  min=165.59µs med=2.26ms  max=43.13ms p(90)=4.09ms  p(95)=4.88ms 
     iterations.....................: 3661233 40679.059122/s
     vus............................: 100     min=100        max=100  
     vus_max........................: 100     min=100        max=100  


```

### 15 segundos

```bash
k6 run -d 15s -u 100 k6/script-get.js

          /\      |‾‾| /‾‾/   /‾‾/   
     /\  /  \     |  |/  /   /  /    
    /  \/    \    |     (   /   ‾‾\  
   /          \   |  |\  \ |  (‾)  | 
  / __________ \  |__| \__\ \_____/ .io

  execution: local
     script: k6/script-get.js
     output: -

  scenarios: (100.00%) 1 scenario, 100 max VUs, 45s max duration (incl. graceful stop):
           * default: 100 looping VUs for 15s (gracefulStop: 30s)


running (15.0s), 000/100 VUs, 559178 complete and 0 interrupted iterations
default ✓ [======================================] 100 VUs  15s

     data_received..................: 2.1 GB 141 MB/s
     data_sent......................: 70 MB  4.7 MB/s
     http_req_blocked...............: avg=3.72µs  min=696ns    med=1.49µs  max=40.01ms p(90)=2.06µs  p(95)=2.45µs 
     http_req_connecting............: avg=939ns   min=0s       med=0s      max=39.76ms p(90)=0s      p(95)=0s     
     http_req_duration..............: avg=2.6ms   min=156.82µs med=2.32ms  max=51.57ms p(90)=4.4ms   p(95)=5.21ms 
       { expected_response:true }...: avg=2.6ms   min=156.82µs med=2.32ms  max=51.57ms p(90)=4.4ms   p(95)=5.21ms 
     http_req_failed................: 0.00%  ✓ 0            ✗ 559178
     http_req_receiving.............: avg=38.12µs min=8.61µs   med=19.39µs max=11.45ms p(90)=29.12µs p(95)=69.22µs
     http_req_sending...............: avg=13.47µs min=3.4µs    med=7.27µs  max=36.02ms p(90)=10.02µs p(95)=14.9µs 
     http_req_tls_handshaking.......: avg=0s      min=0s       med=0s      max=0s      p(90)=0s      p(95)=0s     
     http_req_waiting...............: avg=2.55ms  min=133.14µs med=2.28ms  max=38.55ms p(90)=4.34ms  p(95)=5.12ms 
     http_reqs......................: 559178 37273.671338/s
     iteration_duration.............: avg=2.66ms  min=198.02µs med=2.39ms  max=60.3ms  p(90)=4.48ms  p(95)=5.29ms 
     iterations.....................: 559178 37273.671338/s
     vus............................: 100    min=100        max=100 
     vus_max........................: 100    min=100        max=100 

```