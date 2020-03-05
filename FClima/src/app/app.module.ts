import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';

import { AppComponent } from './app.component';
import { ChartsComponent } from './landing/charts/charts.component';

import { RouterModule, Routes } from '@angular/router';
import { LoginComponent } from './login/login.component';
import { LayoutComponent } from './layout/layout.component';

const rutas: Routes = [
  { path: 'charts', component: ChartsComponent}
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
    RouterModule.forRoot(rutas)
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule {
  public chart: any = null;
 }
