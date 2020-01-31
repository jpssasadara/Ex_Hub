import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { UserManagementViewComponent } from './user-management-view.component';

describe('UserManagementViewComponent', () => {
  let component: UserManagementViewComponent;
  let fixture: ComponentFixture<UserManagementViewComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ UserManagementViewComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(UserManagementViewComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
