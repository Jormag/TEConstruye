import { Component, OnInit } from '@angular/core';
import { Clientes, ClientesTecRes } from 'src/app/elementos.model'
import { ConexionapiService } from 'src/app/Conexion/conexionapi.service'

@Component({
  selector: 'app-clientes',
  templateUrl: './clientes.component.html',
  styleUrls: ['./clientes.component.css']
})
export class ClientesComponent implements OnInit {

  users: ClientesTecRes[];// = [{Cedula:209820983 , Nombre: 'Jose', Apellido1: 'Díaz', Apellido2: 'Bolaños', Telefono: 87675544 }];
  
  constructor(private dataService: ConexionapiService) { }

  ngOnInit() {
    this.dataService.getClienteTecRes().subscribe(data => this.users = data);
  }

}
