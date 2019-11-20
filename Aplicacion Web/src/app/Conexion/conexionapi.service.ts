import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders, HttpRequest } from '@angular/common/http';
import { EmpleadoProyecto, Materiales, Clientes, ClientesTecRes, Ingenieros, Gasto, Especialidad, ObraMateriales , Etapa, EtapaProyecto, CompraMateriales, Empleado,
 Obra} from 'src/app/elementos.model'


@Injectable({
  providedIn: 'root'
})
export class ConexionapiService {

  users: Array<any> = [] 
  formData = Materiales;
  listEmpPro: EmpleadoProyecto[];
  listClientes: Clientes[];
  listClientesTec: ClientesTecRes[];
  listIng: Ingenieros[];
  listGasto: Gasto[];
  listEspecialidad: Especialidad[];
  listObraMateriales: ObraMateriales[];
  listEtapa: Etapa[];
  listEtapaProyecto: EtapaProyecto[];
  listMateriales : Materiales []; 
  listCompraMateriales: CompraMateriales[];
  listObra: Obra[];
  
  

  apiUrl = "https://teconstruye-webapi.azurewebsites.net/api"
  apiUrl2 = "https://tecres-webapi-teconstruye.azurewebsites.net/api"

  constructor(private _http: HttpClient) { 

  }
  getClienteTecRes(){
    return this._http.get<ClientesTecRes[]>(this.apiUrl2 + '/Cliente')
  }
  //Metodos Get 
  getEmpleadoProyect(){
    return this._http.get<EmpleadoProyecto[]>(this.apiUrl + '/EmpleadoProyecto');
  }
  getClientes(){
    return this._http.get<Clientes[]>(this.apiUrl + '/Cliente');
  }
  getIngeniero(){
    return this._http.get<Ingenieros[]>(this.apiUrl + '/Ingeniero');
  }
  getGasto(){
    return this._http.get<Gasto[]>(this.apiUrl + '/Gasto');
  }
  getEspecialidad(){
    return this._http.get<Especialidad[]>(this.apiUrl + '/Especialidad');
  }
  getObraMateriales(){
    return this._http.get<ObraMateriales[]>(this.apiUrl + '/ObraMateriales');
  }
  getUbicaciones(){
    return this._http.get<Materiales[]>(this.apiUrl + '/Ubicacion');
  }
  getEtapa(){
    return this._http.get<Etapa[]>(this.apiUrl + '/Etapa');
  }
  getEtapaProyecto(){
    return this._http.get<EtapaProyecto[]>(this.apiUrl + '/Ingeniero');
  }
  getMaterial(){
    return this._http.get<Materiales[]>(this.apiUrl + '/Material');
  }
  getCompraMateriales(){
    return this._http.get<CompraMateriales[]>(this.apiUrl + '/CompraMateriales');
  }
  getEmpleado(){
    return this._http.get<Empleado[]>(this.apiUrl + '/Empleado');
  }
  getObra(){
    return this._http.get<Obra[]>(this.apiUrl + '/Obra');
  }
  
  
  //Metodos Post 
  postMateriales(Data){
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

//Metodos para los Get por ID
getMaterialID(ID){
  return this._http.get<Materiales>(this.apiUrl + '/Material?Codigo='+ JSON.parse(ID));
}

}
