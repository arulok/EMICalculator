package com.smu.devops.demo;

import org.junit.Assert;
import org.junit.Test;

public class EMICalculatorTest {
    
	@Test 
@SuppressWarnings("deprecation")
	public void test_calculatePayment(){
		
		CalculatorServlet calculatorServlet = new CalculatorServlet();
				
		double payment = calculatorServlet.calculateEMI(100000, 120, 2);
		
		Assert.assertEquals(200000,payment,0.0001);
	}
}
