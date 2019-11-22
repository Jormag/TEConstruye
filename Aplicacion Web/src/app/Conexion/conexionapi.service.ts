import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders, HttpRequest } from '@angular/common/http';
import { ClienteTECRes, FacturaMateriales, EtapaObra, EtapaMateriales, EmpleadoObra, Cliente, Ingeniero, Gasto, Especialidad, Proveedor, Ubicacion, Etapa, Material, Empleado, Factura, Obra} from 'src/app/elementos.model'


@Injectable({
  providedIn: 'root'
})
export class ConexionapiService {

  users: Array<any> = [] 
  listClienteTECRes: ClienteTECRes[];
  listFacturaMateriales: FacturaMateriales[];
  listEtapaObra: EtapaObra[];
  listEtapaMateriales: EtapaMateriales[];
  listEmpleadoObra: EmpleadoObra[];
  listCliente: Cliente[];
  listIngeniero: Ingeniero[];
  listGasto: Gasto[];
  listEspecialidad: Especialidad[];
  listProveedor: Proveedor[];
  listUbicacion: Ubicacion[];
  listEtapa: Etapa[];
  listMaterial: Material[];
  listEmpleado: Empleado[];
  listFactura: Factura[];
  listObra: Obra[];
  

  apiUrl = "https://teconstruye-webapi.azurewebsites.net/api"
  apiUrl2 = "https://tecres-webapi-teconstruye.azurewebsites.net/api/Cliente"

  constructor(private _http: HttpClient) { 

  }
  /*#################################################################
  #############      Metodos para los Get    ########################
  ##################################################################*/
  getClientesTECRes(){
    return this._http.get<ClienteTECRes[]>(this.apiUrl2)
  }

  getFacturaMateriales(){
    return this._http.get<FacturaMateriales[]>(this.apiUrl + '/FacturaMateriales')
  }
  getEtapaObra(){
    return this._http.get<EtapaObra[]>(this.apiUrl + '/EtapaObra')
  }
  
  getEtapaMateriales(){
    return this._http.get<EtapaMateriales[]>(this.apiUrl + '/EtapaMateriales');
  }
  getEmpleadoObra(){
    return this._http.get<EmpleadoObra[]>(this.apiUrl + '/EmpleadoObra');
  }
  getCliente(){
    return this._http.get<Cliente[]>(this.apiUrl + '/Cliente');
  }
  getIngeniero(){
    return this._http.get<Ingeniero[]>(this.apiUrl + '/Ingeniero');
  }
  getGasto(){
    return this._http.get<Gasto[]>(this.apiUrl + '/Gasto');
  }
  getEspecialidad(){
    return this._http.get<Especialidad[]>(this.apiUrl + '/Especialidad');
  }
  getProveedor(){
    return this._http.get<Proveedor[]>(this.apiUrl + '/Proveedor');
  }
  getUbicacion(){
    return this._http.get<Ubicacion[]>(this.apiUrl + '/Ubicacion');
  }
  getEtapa(){
    return this._http.get<Etapa[]>(this.apiUrl + '/Etapa');
  }
  getMaterial(){
    return this._http.get<Material[]>(this.apiUrl + '/Material');
  }
  getEmpleado(){
    return this._http.get<Empleado[]>(this.apiUrl + '/Empleado');
  }
  getFactura(){
    return this._http.get<Factura[]>(this.apiUrl + '/Factura');
  }
  getObra(){
    return this._http.get<Obra[]>(this.apiUrl + '/Obra');
  }
  
  /*#################################################################
  #############     Metodos para los Post    ########################
  ##################################################################*/
  postMaterial(Data){
    const httpOptions = {
      headers: new HttpHeaders({
        'Content-Type':  'application/json'
        })
      };
    console.log(Data);
    return this._http.post(this.apiUrl + '/Material',Data, httpOptions).subscribe(
      (response) => console.log(response),
      (error) => console.log(error)
    )
  }

  postCliente(Data){
    const httpOptions = {
      headers: new HttpHeaders({
        'Content-Type':  'application/json'
        })
      };
    console.log(Data);
    return this._http.post(this.apiUrl + '/Cliente',Data, httpOptions).subscribe(
      (response) => console.log(response),
      (error) => console.log(error)
    )
  }

  postIngeniero(Data){
    const httpOptions = {
      headers: new HttpHeaders({
        'Content-Type':  'application/json'
        })
      };
    console.log(Data);
    return this._http.post(this.apiUrl + '/Ingeniero',Data, httpOptions).subscribe(
      (response) => console.log(response),
      (error) => console.log(error)
    )
  }

  postEmpleado(Data){
    const httpOptions = {
      headers: new HttpHeaders({
        'Content-Type':  'application/json'
        })
      };
    console.log(Data);
    return this._http.post(this.apiUrl + '/Empleado',Data, httpOptions).subscribe(
      (response) => console.log(response),
      (error) => console.log(error)
    )
  }

  postObra(Data){
    const httpOptions = {
      headers: new HttpHeaders({
        'Content-Type':  'application/json'
        })
      };
    console.log(Data);
    return this._http.post(this.apiUrl + '/Obra',Data, httpOptions).subscribe(
      (response) => console.log(response),
      (error) => console.log(error)
    )
  }

  postGasto(Data){
    const httpOptions = {
      headers: new HttpHeaders({
        'Content-Type':  'application/json'
        })
      };
    console.log(Data);
    return this._http.post(this.apiUrl + '/Gasto',Data, httpOptions).subscribe(
      (response) => console.log(response),
      (error) => console.log(error)
    )
  }
/*#################################################################
############# Metodos para los Get por ID  ########################
##################################################################*/

getMaterialID(ID){
  return this._http.get<Material>(this.apiUrl + '/Material?Codigo='+ JSON.parse(ID));
}

getClienteID(ID){
  return this._http.get<Cliente>(this.apiUrl + '/Cliente?Cedula='+ JSON.parse(ID));
}

getIngenieroID(ID){
  return this._http.get<Ingeniero>(this.apiUrl + '/Ingeniero?Codigo='+ JSON.parse(ID));
}

getEmpleadoID(ID){
  return this._http.get<Empleado>(this.apiUrl + '/Empleado?Cedula='+ JSON.parse(ID));
}

getObraID(ID){
  return this._http.get<Obra>(this.apiUrl + '/Obra?IDObra='+ JSON.parse(ID));
}

getProveedorID(ID){
  return this._http.get<Proveedor>(this.apiUrl + '/Proveedor?IDProveedor='+ JSON.parse(ID));
}

/*#################################################################
############# Metodos para Eliminar  ########################
##################################################################*/
EliminarMaterial(ID){
  return this._http.delete(this.apiUrl + '/Material?Codigo' + ID);  
}

}
