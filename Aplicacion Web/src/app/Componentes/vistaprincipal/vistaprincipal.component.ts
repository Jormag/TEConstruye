import { Component, OnInit } from '@angular/core';
import { ConexionapiService } from 'src/app/Conexion/conexionapi.service'
import { Cliente, ClienteTECRes } from 'src/app/elementos.model'

@Component({
  selector: 'app-vistaprincipal',
  templateUrl: './vistaprincipal.component.html',
  styleUrls: ['./vistaprincipal.component.css']
})
export class VistaprincipalComponent implements OnInit {
  usersCliente: Cliente[] = [];
  usersClienteTECRes: ClienteTECRes[] = [];


  constructor(private dataService: ConexionapiService) { }

  ngOnInit() {
    this.dataService.getCliente().subscribe(data => this.usersCliente = data);
    this.dataService.getClientesTECRes().subscribe(data => this.usersClienteTECRes = data);
    console.log(ClienteTECRes);
    this.Sincronizacion();
  }

private Sincronizacion(): void {
  let encontrado: boolean = false;
  for (let user of this.usersClienteTECRes ){
    for (let user2 of this.usersCliente){
      if (user2.Cedula == user.Cedula){
        encontrado = true;
      }
    }
    if (encontrado == false){
      let cliente2 : Cliente;
      cliente2.Nombre = user.Nombre;
      cliente2.Cedula = user.Cedula;
      cliente2.Telefono = user.Telefono;
      this.dataService.postCliente(cliente2);
    }
  };
}
private VerificarCliente(cliente: ClienteTECRes){
  
}
}
