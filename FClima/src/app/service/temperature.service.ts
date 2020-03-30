import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { TempHum } from '../interface/temp-hum';
import { API_URL } from '../env';

@Injectable({
  providedIn: 'root'
})
export class TemperatureService {

  constructor(
    private _http: HttpClient
  ) { }
  headers = new HttpHeaders().set('Access-Control-Allow-Origin','*')
    .set('Access-Control-Allow-Credentials', 'true')
    .set('Access-Control-Max-Age', '86400');

    login(){
      return this._http.get<TempHum[]>(`${API_URL}/`,
      {headers: this.headers});
    }
}
