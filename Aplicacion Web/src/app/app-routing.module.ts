import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { VistaprincipalComponent } from './Componentes/vistaprincipal/vistaprincipal.component';
import { LoginComponent } from './Componentes/login/login.component';
import { ClientesComponent } from './Componentes/clientes/clientes.component';
import { EmpleadosComponent } from './Componentes/empleados/empleados.component';
import { GastosComponent } from './Componentes/gastos/gastos.component';
import { ProyectosComponent } from './Componentes/proyectos/proyectos.component';
import { RegistroIngenierosArquitectosComponent } from './Componentes/registro-ingenieros-arquitectos/registro-ingenieros-arquitectos.component';
import { MaterialesComponent } from './Componentes/materiales/materiales.component';
import { OpcionesObraComponent } from './Componentes/opciones-obra/opciones-obra.component';
import { AgregarClientesComponent } from './Componentes/agregar-clientes/agregar-clientes.component';
import { AgregarEmpleadosComponent } from './Componentes/agregar-empleados/agregar-empleados.component';
import { AgregarGastosComponent } from './Componentes/agregar-gastos/agregar-gastos.component';
import { AgregarIngenierosComponent } from './Componentes/agregar-ingenieros/agregar-ingenieros.component';
import { AgregarMaterialesComponent } from './Componentes/agregar-materiales/agregar-materiales.component';
import { AgregarProyectosComponent } from './Componentes/agregar-proyectos/agregar-proyectos.component';

const routes: Routes = [

  {
    path: 'home',
    component: LoginComponent,
  },
  {
    path: '',
    redirectTo: 'home',
    pathMatch: 'full'
  },
  {
    path: 'vistageneral',
    component: VistaprincipalComponent,
  },
  {
    path: 'clientes',
    component: ClientesComponent,

  },
  {
    path: 'empleados',
    component: EmpleadosComponent,

  },
  {
    path: 'gastos',
    component: GastosComponent,

  },
  {
    path: 'proyectos',
    component: ProyectosComponent,

  },
  {
    path: 'registroing',
    component: RegistroIngenierosArquitectosComponent,

  },

  {
    path: "materiales",
    component: MaterialesComponent,
  },
  {
    path: "opcionesobra",
    component: OpcionesObraComponent,
  },
  {
    path: "agregarclientes",
    component: AgregarClientesComponent,
  },
  {
    path: "agregarempleados",
    component: AgregarEmpleadosComponent,
  },
  {
    path: "agregargastos",
    component: AgregarGastosComponent,
  },
  {
    path: "agregaringenieros",
    component: AgregarIngenierosComponent,
  },
  {
    path: "agregarmateriales",
    component: AgregarMaterialesComponent,
  },
  {
    path: "agregarproyectos",
    component: AgregarProyectosComponent,
  },


];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
