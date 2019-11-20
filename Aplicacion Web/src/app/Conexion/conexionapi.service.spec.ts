import { TestBed } from '@angular/core/testing';

import { ConexionapiService } from './conexionapi.service';

describe('ConexionapiService', () => {
  beforeEach(() => TestBed.configureTestingModule({}));

  it('should be created', () => {
    const service: ConexionapiService = TestBed.get(ConexionapiService);
    expect(service).toBeTruthy();
  });
});
