import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { EtapasObraComponent } from './etapas-obra.component';

describe('EtapasObraComponent', () => {
  let component: EtapasObraComponent;
  let fixture: ComponentFixture<EtapasObraComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ EtapasObraComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(EtapasObraComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
