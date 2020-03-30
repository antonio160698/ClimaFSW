import { Component, OnInit } from '@angular/core';
import { TemperatureService } from '../service/temperature.service';
@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {
  
  temperature: any[] = [];
  constructor( protected tempServer: TemperatureService) { }

    
  ngOnInit(): void {
    this.tempServer.login()
    .subscribe(
      (data) => { // Success
        this.temperature = data;
        console.log(this.temperature);
      },
      (error) => {
        console.error(error);
      }
    );
  }

}
