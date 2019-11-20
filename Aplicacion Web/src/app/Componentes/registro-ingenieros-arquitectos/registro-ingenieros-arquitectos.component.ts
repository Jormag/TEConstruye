import { Component, OnInit } from '@angular/core';
import { Ingenieros } from 'src/app/elementos.model'

@Component({
  selector: 'app-registro-ingenieros-arquitectos',
  templateUrl: './registro-ingenieros-arquitectos.component.html',
  styleUrls: ['./registro-ingenieros-arquitectos.component.css']
})
export class RegistroIngenierosArquitectosComponent implements OnInit {

  users: Ingenieros []; //= [{Nombre:'Pablo',Apellido1:'Azofeifa',Apellido2:'González',Especialidad:'Computadores',Cedula:702350983,Telefono:89883145} ];

  constructor() { }

  ngOnInit() {
  }

}
