import { NgModule } from '@angular/core';
import { Routes, RouterModule, } from '@angular/router';
import { EmployeecrudoperationComponent } from './employeecrudoperation/employeecrudoperation.component';

const routes: Routes = [
  { path: 'user', component: EmployeecrudoperationComponent }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
