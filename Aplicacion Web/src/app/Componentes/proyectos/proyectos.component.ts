import { Component, OnInit } from '@angular/core';
import { Obra } from 'src/app/elementos.model'
import { ConexionapiService } from 'src/app/Conexion/conexionapi.service'

@Component({
  selector: 'app-proyectos',
  templateUrl: './proyectos.component.html',
  styleUrls: ['./proyectos.component.css']
})
export class ProyectosComponent implements OnInit {

  users: Obra[];// = [{Nombre:'Residencial X', Ubicacion:'Cartago', Banos:3, TipoPiso:'Ceramica', MetrosConstruccion:100, MetrosArea:1000, Habitaciones:3}];
  
  constructor(private dataService: ConexionapiService) { }

  ngOnInit() {
    this.dataService.getObra().subscribe(data => this.users = data);
  }

}
