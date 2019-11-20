import { Component, OnInit, Input } from '@angular/core';
import { Materiales } from 'src/app/elementos.model'
import { ConexionapiService } from 'src/app/Conexion/conexionapi.service'
import { FormControl, FormGroupDirective, FormBuilder, FormGroup, NgForm, Validators } from '@angular/forms';
import {FormsModule,ReactiveFormsModule} from '@angular/forms';

@Component({
  selector: 'app-agregar-materiales',
  templateUrl: './agregar-materiales.component.html',
  styleUrls: ['./agregar-materiales.component.css']
})
export class AgregarMaterialesComponent implements OnInit {
  objmatmat: Materiales; 
  @Input() objmat:  Materiales = new Materiales();  
  form: FormGroup;

  constructor(private dataServices: ConexionapiService ,public fb: FormBuilder) { 
    /*this.form = this.fb.group({
      NombreMaterial: [null],
      Codigo: [''],
      PrecioUnitario: [''],
      Cantidad: [''],
      
    })*/
  }

  ngOnInit() {
  }

  Register(regForm:NgForm){
    this.objmatmat=new Materiales();
    this.objmatmat.Codigo=regForm.value.Codigo;
    this.objmatmat.Nombre=regForm.value.NombreMaterial;
    this.objmatmat.PrecioUnitario=regForm.value.PUnitario;
    //this.objmatmat.Cantidad=regForm.value.Cantidad;
    const Objt = JSON.stringify(this.objmatmat);
    console.log(Objt);
    return this.dataServices.postMateriales(this.objmatmat);
    /*this.dataservice.AddEmployee(this.objtempemp).subscribe(res=>{
        alert("Employee Added successfully");
        this.TakeHome();
    }
)*/
}
/*submitForm() {
    var formData: any = new FormData();
    //formData.append("IDUbicacion", this.form.get('NombreMaterial').value);
    formData.append("Provincia", this.form.get('Codigo').value);
    formData.append("Canton", this.form.get('PrecioUnitario').value);
    formData.append("Distrito", this.form.get('Cantidad').value);
    //formData.append("Mobile", this.form.get('Mobile').value);
    const Objt =  JSON.stringify(formData);
    
    return this.dataServices.postPrueba(Objt);
      
  }*/
}
