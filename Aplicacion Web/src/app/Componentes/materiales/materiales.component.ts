import { Component, OnInit } from '@angular/core';
import { Materiales } from 'src/app/elementos.model'
import { ConexionapiService } from 'src/app/Conexion/conexionapi.service'

@Component({
  selector: 'app-materiales',
  templateUrl: './materiales.component.html',
  styleUrls: ['./materiales.component.css']
})
export class MaterialesComponent implements OnInit {

  users: Materiales []; // = [{NombreMaterial:'Clavos 1 1/2',Codigo:123, PrecioUnitario:23, Cantidad:12}];
  test: Materiales[];
  constructor(private dataService: ConexionapiService) { }

  ngOnInit() {
    //this.dataService.getMaterial().subscribe(data => this.users = data);
    this.dataService.getMaterialID(32).subscribe(data => this.users = [data]);
  }

getIndividual(ID){
  console.log(ID);
  return this.dataService.getMaterialID(ID); 
}

}
