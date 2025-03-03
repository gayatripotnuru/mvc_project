<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>payment</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/payment.css">
</head>
<body>
   <header class="main-header">
    <img src="https://i.pinimg.com/736x/e5/db/f2/e5dbf27053bcb6c8a4b187244d44078a.jpg" alt="Logo">
    <button onclick="window.location.href='${pageContext.request.contextPath}/user/userprofile'">Profile</button>
</header>
   
    <div class="payment-container">
        <h2>Select Payment:</h2>
        <div class="payment-section">
          <label>
            <input type="radio" name="payment" checked>
            Credit/Debit Card
          </label>
    
          <div class="card-info">
            <label>Name on Card:
              <input type="text" placeholder="Enter cardholder name">
            </label>
    
            <label>Card Number:
              <input type="text" placeholder="Enter card number">
            </label>
    
            <div class="expiry-cvv">
              <label>End Date (MM/YY):
                <input type="text" placeholder="MM">
                <input type="text" placeholder="YYYY">
              </label>
              <label>CVV:
                <input type="text" placeholder="CVV">
              </label>
            </div>
            <button class="submit-btn" onclick="gotothankyou()"> Pay</button>
          </div>
        </div>
        <div class="payment-section">
          <label>
            <input type="radio" name="payment">
            UPI Number
          </label>
          <label>UPI ID:
            <input type="text" placeholder="Enter UPI number">
          </label>
          <button class="submit-btn">Pay</button>
        </div>
      </div>
      <script>

		function gotothankyou() {
			window.location.href = "/thankyou";
		}
	</script>
</body>
</html>