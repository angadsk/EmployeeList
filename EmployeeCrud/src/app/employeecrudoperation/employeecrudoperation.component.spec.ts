import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { EmployeecrudoperationComponent } from './employeecrudoperation.component';

describe('EmployeecrudoperationComponent', () => {
  let component: EmployeecrudoperationComponent;
  let fixture: ComponentFixture<EmployeecrudoperationComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ EmployeecrudoperationComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(EmployeecrudoperationComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
