enum EmployeeTypes { programmer, designer, financialManager }

abstract class Employee {
  void work();
  // factory Employee(EmployeeTypes type) {
  //   print("factory Employee constructor worked");
  //   switch (type) {
  //     case EmployeeTypes.programmer:
  //       return Programmer();
  //     case EmployeeTypes.designer:
  //       return Designer();
  //     case EmployeeTypes.financialManager:
  //       return FinancialManager();
  //     default:
  //       return Programmer();
  //   }
  // }
}

class FactoryDesignPattern {
  static Employee getEmployee(EmployeeTypes type) {
    switch (type) {
      case EmployeeTypes.programmer:
        return Programmer();
      case EmployeeTypes.designer:
        return Designer();
      case EmployeeTypes.financialManager:
        return FinancialManager();
      default:
        return Programmer();
    }
  }
}

class Programmer implements Employee {
  @override
  void work() {
    print("Programmer worked");
  }
}

class Designer implements Employee {
  @override
  void work() {
    print("Designer worked");
  }
}

class FinancialManager implements Employee {
  @override
  void work() {
    print("Financial Manager worked");
  }
}


