import { TestBed } from '@angular/core/testing';

import { AuthenticationAuthGaurdService } from './authentication-auth-gaurd.service';

describe('AuthenticationAuthGaurdService', () => {
  beforeEach(() => TestBed.configureTestingModule({}));

  it('should be created', () => {
    const service: AuthenticationAuthGaurdService = TestBed.get(AuthenticationAuthGaurdService);
    expect(service).toBeTruthy();
  });
});
