import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { OpcionesObraComponent } from './opciones-obra.component';

describe('OpcionesObraComponent', () => {
  let component: OpcionesObraComponent;
  let fixture: ComponentFixture<OpcionesObraComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ OpcionesObraComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(OpcionesObraComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
