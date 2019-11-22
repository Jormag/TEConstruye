import { Component, OnInit } from '@angular/core';
import { Gasto, Obra, Proveedor } from 'src/app/elementos.model'
import { ConexionapiService } from 'src/app/Conexion/conexionapi.service'

@Component({
  selector: 'app-gastos',
  templateUrl: './gastos.component.html',
  styleUrls: ['./gastos.component.css']
})
export class GastosComponent implements OnInit {

  contador: number = -1;
  obra: Obra;
  users: Gasto[];// = [{Proveedor: 'El Lagar', Foto:'ersdede', NumeroFactura: 12}];
  usersObra: Obra[] = [] ;
  usersProveedor: Proveedor;
  constructor(private dataService: ConexionapiService) { }

  ngOnInit() {
    this.dataService.getGasto().subscribe(data => this.users = data);
    //this.dataService.getObraID(this.users).subscribe(data => this.usersObra = [data]);
  }

  public obtenerDatos(ID): String {
    this.dataService.getObraID(ID).subscribe(data => this.obra = data);
    this.usersObra.push(this.obra);
    this.contador = this.contador + 1;
    return this.usersObra[this.contador].Nombre;
    
  }

}
