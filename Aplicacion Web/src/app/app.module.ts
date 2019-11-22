import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { HttpClientModule } from '@angular/common/http';

import { AngularFireModule } from '@angular/fire';
import { AngularFireStorageModule } from '@angular/fire/storage';
import { environment } from '../environments/environment';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { VistaprincipalComponent } from './Componentes/vistaprincipal/vistaprincipal.component';
import { LoginComponent } from './Componentes/login/login.component';
import { RegistroIngenierosArquitectosComponent } from './Componentes/registro-ingenieros-arquitectos/registro-ingenieros-arquitectos.component';
import { ProyectosComponent } from './Componentes/proyectos/proyectos.component';
import { EmpleadosComponent } from './Componentes/empleados/empleados.component';
import { ClientesComponent } from './Componentes/clientes/clientes.component';
import { GastosComponent } from './Componentes/gastos/gastos.component';
import { MaterialesComponent } from './Componentes/materiales/materiales.component';
import { OpcionesObraComponent } from './Componentes/opciones-obra/opciones-obra.component';
import { AgregarIngenierosComponent } from './Componentes/agregar-ingenieros/agregar-ingenieros.component';
import { AgregarClientesComponent } from './Componentes/agregar-clientes/agregar-clientes.component';
import { AgregarEmpleadosComponent } from './Componentes/agregar-empleados/agregar-empleados.component';
import { AgregarGastosComponent } from './Componentes/agregar-gastos/agregar-gastos.component';
import { AgregarMaterialesComponent } from './Componentes/agregar-materiales/agregar-materiales.component';
import { AgregarProyectosComponent } from './Componentes/agregar-proyectos/agregar-proyectos.component';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { EditarMaterialComponent } from './Componentes/editar-material/editar-material.component';
import { EtapasObraComponent } from './Componentes/etapas-obra/etapas-obra.component';

@NgModule({
  declarations: [
    AppComponent,
    VistaprincipalComponent,
    LoginComponent,
    RegistroIngenierosArquitectosComponent,
    ProyectosComponent,
    EmpleadosComponent,
    ClientesComponent,
    GastosComponent,
    MaterialesComponent,
    OpcionesObraComponent,
    AgregarIngenierosComponent,
    AgregarClientesComponent,
    AgregarEmpleadosComponent,
    AgregarGastosComponent,
    AgregarMaterialesComponent,
    AgregarProyectosComponent,
    EditarMaterialComponent,
    EtapasObraComponent,
    
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    FormsModule,
    ReactiveFormsModule,
    HttpClientModule,
    AngularFireModule.initializeApp(environment.firebaseConfig),
    AngularFireStorageModule,
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
