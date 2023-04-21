//@jeffotoni
import http from 'k6/http';
import { sleep } from 'k6';

const headers = { 'Content-Type': 'application/json' };

export default function() {
    http.get(`http://localhost:3000/v1/avatar`, { headers: headers });
}
