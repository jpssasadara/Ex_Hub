import { TestBed } from '@angular/core/testing';

import { PageUserRoleService } from './page-user-role.service';

describe('PageUserRoleService', () => {
  beforeEach(() => TestBed.configureTestingModule({}));

  it('should be created', () => {
    const service: PageUserRoleService = TestBed.get(PageUserRoleService);
    expect(service).toBeTruthy();
  });
});
