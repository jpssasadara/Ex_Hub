import { TestBed } from '@angular/core/testing';

import { AuthenticationAndAuthorizationService } from './authentication-and-authorization.service';

describe('AuthenticationAndAuthorizationService', () => {
  beforeEach(() => TestBed.configureTestingModule({}));

  it('should be created', () => {
    const service: AuthenticationAndAuthorizationService = TestBed.get(AuthenticationAndAuthorizationService);
    expect(service).toBeTruthy();
  });
});
