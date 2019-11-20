import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { RegistroIngenierosArquitectosComponent } from './registro-ingenieros-arquitectos.component';

describe('RegistroIngenierosArquitectosComponent', () => {
  let component: RegistroIngenierosArquitectosComponent;
  let fixture: ComponentFixture<RegistroIngenierosArquitectosComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ RegistroIngenierosArquitectosComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(RegistroIngenierosArquitectosComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
