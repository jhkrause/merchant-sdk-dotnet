﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PaymentCapture.aspx.cs" Inherits="PayPalAPISample.UseCaseSamples.PaymentCapture" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>PayPal Merchant SDK - DoCapture</title>
</head>
<body>
    <img src="https://devtools-paypal.com/image/bdg_payments_by_pp_2line.png" alt="PAYMENTS BY PayPal" />
    <div id="wrapper">
        <div id="header">
            <h3>DoCapture</h3>
			<div id="apidetails">
                <p><i>Used to captures an authorized payment.</i></p>
			</div>
        </div>
        <br />
        <form id="form1" runat="server" method="post">
        <div id="request_form">
            <div class="param_name">AuthorizationID*</div>
					<div class="param_value">
						<input type="text" name="authID" id="authID" size="50" maxlength="260" runat="server" readonly="readonly" />
					</div>
				</div>
				<div class="params">
					<div class="param_name">Amount*</div>
					<div class="param_value">
						<input type="text" name="amt" value="1.00" size="50"
							maxlength="260" />
					</div>
				</div>
				<div class="params">
					<div class="param_name">Currency Code*</div>
					<div class="param_value">
						<input type="text" name="currencyCode" value="USD" size="50"
							maxlength="260" />
					</div>
				</div>
				<div class="params">
					<div class="param_name">CompleteCodeType*</div>
					<div class="param_value">
						<select name="completeCodeType">
							<option value="COMPLETE">Complete</option>
							<option value="NOTCOMPLETE">NotComplete</option>
						</select>
					</div>
				</div>
        <br />
        <div class="submit">
            <asp:Button ID="ButtonPayments" Text="DoCapture" runat="server" PostBackUrl="~/UseCaseSamples/Payments.ashx" />
        </div>
        <br />
        <a href="../Default.aspx">Home</a>        
        </form>
    </div>
</body>
</html>
