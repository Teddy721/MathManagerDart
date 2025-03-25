class mathmanager{

	int add(int a, int b){
			return a+b;
	}

	int subtract(int a, int b){
			return a-b;
	}

	int multiply(int a, int b){
			return a*b;
  }

}

double calculateMonthlyInterest(double amount, int years) {
    double annualRate = years == 1 ? 3.8 : 3.6;
    double monthlyRate = annualRate / 100 / 12;
    return amount * monthlyRate;
  }

double calculateTax(double income) {
    if (income <= 12570) {
      return 0;
    } else if (income <= 50270) {
      return (income - 12570) * 0.2;
    } else if (income <= 125140) {
      return (50270 - 12570) * 0.2 + (income - 50270) * 0.4;
    } else {
      return (50270 - 12570) * 0.2 + (125140 - 50270) * 0.4 + (income - 125140) * 0.45;
    }
  }

String calculateDegreeClassification(List<Map<String, dynamic>> modules) {
    modules.sort((a, b) => a['mark'].compareTo(b['mark']));
    List<Map<String, dynamic>> filteredModules = modules.sublist(1);

    double totalMarks = 0;
    int totalCredits = 0;
    for (var module in filteredModules) {
      totalMarks += module['mark'] * module['credits'];
      totalCredits += module['credits'];
    }

    double average = totalMarks / totalCredits;
    if (average >= 70) {
      return 'First Class';
    } else if (average >= 60) {
      return 'Upper Second Class (2:1)';
    } else if (average >= 50) {
      return 'Lower Second Class (2:2)';
    } else if (average >= 40) {
      return 'Third Class';
    } else {
      return 'Fail';
    }
  }
