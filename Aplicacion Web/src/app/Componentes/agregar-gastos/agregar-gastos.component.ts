import { Component, OnInit, Input } from '@angular/core';
import { Gasto } from 'src/app/elementos.model'
import { ConexionapiService } from 'src/app/Conexion/conexionapi.service'
import { FormGroup, FormControl, Validators, FormBuilder, NgForm } from '@angular/forms';
import { FirebaseStorageService } from 'src/app/firebase-storage.service';

@Component({
  selector: 'app-agregar-gastos',
  templateUrl: './agregar-gastos.component.html',
  styleUrls: ['./agregar-gastos.component.css']
})
export class AgregarGastosComponent implements OnInit {
  objgasgas: Gasto; 
  @Input() objgasto:  Gasto = new Gasto();  
  form: FormGroup;

  constructor (
    private firebaseStorage: FirebaseStorageService, private dataServices: ConexionapiService ,public fb: FormBuilder
  ) {}

  public archivoForm = new FormGroup({
    archivo: new FormControl(null, Validators.required),
  });
  
  public mensajeArchivo = 'No hay un archivo seleccionado';
  public datosFormulario = new FormData();
  public nombreArchivo = '';
  public URLPublica = '';
  public porcentaje = 0;
  public finalizado = false;

  public cambioArchivo(event) {
    if (event.target.files.length > 0) {
      for (let i = 0; i < event.target.files.length; i++) {
        this.mensajeArchivo = `Archivo preparado: ${event.target.files[i].name}`;
        this.nombreArchivo = event.target.files[i].name;
        this.datosFormulario.delete('archivo');
        this.datosFormulario.append('archivo', event.target.files[i], event.target.files[i].name)
      }
    } else {
      this.mensajeArchivo = 'No hay un archivo seleccionado';
    }
  }
  
  //Sube el archivo a Cloud Storage
  public subirArchivo() {
    let archivo = this.datosFormulario.get('archivo');
    let referencia = this.firebaseStorage.referenciaCloudStorage(this.nombreArchivo);
    let tarea = this.firebaseStorage.tareaCloudStorage(this.nombreArchivo, archivo);
  
    //Cambia el porcentaje
    tarea.percentageChanges().subscribe((porcentaje) => {
      this.porcentaje = Math.round(porcentaje);
      if (this.porcentaje == 100) {
        this.finalizado = true;
      }
    });
  
    referencia.getDownloadURL().subscribe((URL) => {
      this.URLPublica = URL;
    });
  }

  AgregarGasto(regForm:NgForm){
    this.objgasgas=new Gasto();
    //this.objgasgas.IDGasto=regForm.value.IDGasto;
    this.objgasgas.IDObra=regForm.value.IDObra;
    this.objgasgas.Proveedor=regForm.value.Proveedor;
    this.objgasgas.IDFactura=regForm.value.IDFactura;
    this.objgasgas.Foto=regForm.value.Foto;
    
    const Objt = JSON.stringify(this.objgasgas);
    console.log(Objt);
    return this.dataServices.postGasto(this.objgasgas);
   
}
  
  ngOnInit() {
  }

}
