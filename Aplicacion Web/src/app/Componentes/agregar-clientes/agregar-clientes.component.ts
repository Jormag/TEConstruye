import { Component, OnInit, Input } from '@angular/core';
import { Cliente } from 'src/app/elementos.model'
import { ConexionapiService } from 'src/app/Conexion/conexionapi.service'
import { FormControl, FormGroupDirective, FormBuilder, FormGroup, NgForm, Validators } from '@angular/forms';
import {FormsModule,ReactiveFormsModule} from '@angular/forms';

@Component({
  selector: 'app-agregar-clientes',
  templateUrl: './agregar-clientes.component.html',
  styleUrls: ['./agregar-clientes.component.css']
})
export class AgregarClientesComponent implements OnInit {
  objclicli: Cliente; 
  @Input() objcli:  Cliente = new Cliente();  
  form: FormGroup;

  constructor(private dataServices: ConexionapiService ,public fb: FormBuilder) { }

  ngOnInit() {
    
  }

  AgregarCliente(regForm:NgForm){
    this.objclicli=new Cliente();
    this.objclicli.Cedula=regForm.value.Cedula;
    this.objclicli.Nombre=regForm.value.Nombre;
    this.objclicli.Telefono=regForm.value.Telefono;
    
    const Objt = JSON.stringify(this.objclicli);
    console.log(Objt);
    return this.dataServices.postCliente(this.objclicli);
   
}

}
