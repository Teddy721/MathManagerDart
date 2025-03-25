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
}
