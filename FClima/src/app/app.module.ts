import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';

import { AppComponent } from './app.component';
import { ChartsComponent } from './landing/charts/charts.component';
import { TemperatureService } from './service/temperature.service'

import { RouterModule, Routes } from '@angular/router';
import { LoginComponent } from './login/login.component';
import { LayoutComponent } from './layout/layout.component';
import { HttpClientModule } from '@angular/common/http'

const rutas: Routes = [
  { path: 'charts', component: ChartsComponent},
  // { path: 'login', component: LoginComponent}
];
 declare const M: any;

@NgModule({
  declarations: [
    AppComponent,
    ChartsComponent,
    LoginComponent,
    LayoutComponent
  ],
  imports: [
    BrowserModule,
    HttpClientModule,
    RouterModule.forRoot(rutas)
  ],
  providers: [TemperatureService],
  bootstrap: [AppComponent]
})
export class AppModule {
  public chart: any = null;
 }
