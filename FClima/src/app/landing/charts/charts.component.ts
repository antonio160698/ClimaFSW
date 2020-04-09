import { Component, OnInit } from '@angular/core';
import { Chart } from 'chart.js';
import { TemperatureService } from '../../service/temperature.service';

@Component({
  selector: 'app-charts',
  templateUrl: './charts.component.html',
  styleUrls: ['./charts.component.css']
})
export class ChartsComponent implements OnInit {

  constructor( protected tempServer: TemperatureService) { }

  public chart: any = null;
  public temperature: any[] = [];
  public humedad: any[] = [];
  ngOnInit(): void {
    this.tempServer.login()
    .subscribe(
      (data) => { // Success
        for(let i of data){
          this.temperature.push(i.Temperatura);
          this.humedad.push(i.Humedad);
        }
        console.log(this.temperature);
        console.log(this.humedad);
        this.chart = new Chart('realtime', {
          type: 'line',
          data: {
            labels: ['1','2','3','4','5','6','7','8','9','10'],
            datasets:[{
              label: 'Temperatura',
              borderColor: 'rgb(0,0,255)',
              backgroundColor: 'rgb(0,0,255)',
              fill: false,
              data: this.temperature,
              yAxisID: 'y-axis-1',
            }, {
              label: 'Humedad',
              borderColor: 'rgb(255,0,255)',
              backgroundColor: 'rgb(255,0,255)',
              fill: false,
              data: this.humedad,
              yAxisID: 'y-axis-2'
          }
        ]},
          options:{
              title: {
                display: true,
                text: 'Chart.js Line Chart - Multi Axis'
              },
              scales: {
                yAxes: [{
                  ticks:{
                    max:50,
                    min:0,
                  },
                  type: 'linear', // only linear but allow scale type registration. This allows extensions to exist solely for log scale for instance
                  display: true,
                  position: 'right',
                  id: 'y-axis-1',
                }, {
                  ticks:{
                    max:1500,
                    min:1000,
                  },
                  type: 'linear', // only linear but allow scale type registration. This allows extensions to exist solely for log scale for instance
                  display: true,
                  position: 'left',
                  id: 'y-axis-2',
    
                  // grid line settings
                  gridLines: {
                    drawOnChartArea: false, // only want the grid lines for one axis to show up
                  },
                }],
              }
          }
          
         });
      },
      (error) => {
        console.error(error);
      }
    );
    
  }

}
