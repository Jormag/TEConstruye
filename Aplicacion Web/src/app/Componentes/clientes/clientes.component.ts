import { Component, OnInit } from '@angular/core';
import { Cliente, ClienteTECRes } from 'src/app/elementos.model'
import { ConexionapiService } from 'src/app/Conexion/conexionapi.service'

@Component({
  selector: 'app-clientes',
  templateUrl: './clientes.component.html',
  styleUrls: ['./clientes.component.css']
})
export class ClientesComponent implements OnInit {
  users2: ClienteTECRes[];
  users: Cliente[];// = [{Cedula:209820983 , Nombre: 'Jose', Apellido1: 'Díaz', Apellido2: 'Bolaños', Telefono: 87675544 }];
  
  constructor(private dataService: ConexionapiService) { }

  ngOnInit() {
    this.dataService.getCliente().subscribe(data => this.users = data);
    //this.dataService.getClientesTECRes().subscribe(data => this.users2 = data);
    //this.dataService.getClienteID(202530348).subscribe(data => this.users = [data])
  }

}
