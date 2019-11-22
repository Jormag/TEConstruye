import { Component, OnInit } from '@angular/core';
import { Ingeniero } from 'src/app/elementos.model'
import { ConexionapiService } from 'src/app/Conexion/conexionapi.service'

@Component({
  selector: 'app-registro-ingenieros-arquitectos',
  templateUrl: './registro-ingenieros-arquitectos.component.html',
  styleUrls: ['./registro-ingenieros-arquitectos.component.css']
})
export class RegistroIngenierosArquitectosComponent implements OnInit {

  users: Ingeniero []; //= [{Nombre:'Pablo',Apellido1:'Azofeifa',Apellido2:'González',Especialidad:'Computadores',Cedula:702350983,Telefono:89883145} ];

  constructor(private dataService: ConexionapiService) { }

  ngOnInit() {
    this.dataService.getIngeniero().subscribe(data => this.users = data);
    //this.dataService.getIngenieroID(1795).subscribe(data => this.users = [data])
  }

}
