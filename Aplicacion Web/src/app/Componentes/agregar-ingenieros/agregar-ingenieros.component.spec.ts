import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { AgregarIngenierosComponent } from './agregar-ingenieros.component';

describe('AgregarIngenierosComponent', () => {
  let component: AgregarIngenierosComponent;
  let fixture: ComponentFixture<AgregarIngenierosComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ AgregarIngenierosComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(AgregarIngenierosComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
