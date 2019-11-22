import { Component, OnInit } from '@angular/core';
import { Material } from 'src/app/elementos.model'
import { ConexionapiService } from 'src/app/Conexion/conexionapi.service'

@Component({
  selector: 'app-materiales',
  templateUrl: './materiales.component.html',
  styleUrls: ['./materiales.component.css']
})
export class MaterialesComponent implements OnInit {

  users: Material []; // = [{NombreMaterial:'Clavos 1 1/2',Codigo:123, PrecioUnitario:23, Cantidad:12}];
  test: Material[];
  tempmat: Material 
  constructor(private dataService: ConexionapiService) { }

  ngOnInit() {
    this.dataService.getMaterial().subscribe(data => this.users = data);
    //this.dataService.getMaterialID(1).subscribe(data => this.users = [data]);
  }

getIndividual(ID){
  console.log(ID);
  return this.dataService.getMaterialID(ID); 
}

EliminarMaterial(ID: number){
  //this.tempmat = new Material();
  //this.tempmat.Codigo = ID;
  this.dataService.EliminarMaterial(1);
}

}
