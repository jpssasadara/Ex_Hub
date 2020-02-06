import { TestBed } from '@angular/core/testing';

import { AuthSupService } from './auth-sup.service';

describe('AuthSupService', () => {
  beforeEach(() => TestBed.configureTestingModule({}));

  it('should be created', () => {
    const service: AuthSupService = TestBed.get(AuthSupService);
    expect(service).toBeTruthy();
  });
});
