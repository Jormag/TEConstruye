import { Component, OnInit } from '@angular/core';
import { Gasto } from 'src/app/elementos.model'

@Component({
  selector: 'app-gastos',
  templateUrl: './gastos.component.html',
  styleUrls: ['./gastos.component.css']
})
export class GastosComponent implements OnInit {

  users: Gasto[];// = [{Proveedor: 'El Lagar', Foto:'ersdede', NumeroFactura: 12}];
  constructor() { }

  ngOnInit() {
  }

}
