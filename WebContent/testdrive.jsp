<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Test Drive</title>
<script src="./js/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.0/jquery-ui.js"></script>
<link rel="stylesheet" type="text/css" href="./css/template.css">
<link rel="stylesheet" type="text/css" href="./css/bootstrap.min.css">
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.0/themes/base/jquery-ui.css">
<script type="text/javascript">
	$(function() {
		$("#datepickerFrom").datepicker({ dateFormat: 'dd-mm-yy'}).datepicker("setDate", new Date());
		$('#existingCustomerRadio').change(function() {
			if (this.checked) {
				$('#phoneNumberExisting').show();
				$('#newCustomerForm').hide();
			}
		});
		$('#newCustomerRadio').change(function() {
			if (this.checked) {
				$('#newCustomerForm').show();
				$('#phoneNumberExisting').hide();
			}
		});
	});
</script>
</head>

<body>
	<!-- Header -->
	<div>
		<div>
			<img alt="" class="logo-local" src="./images/logo.png"> <img
				alt="" class="logo-global" src="./images/logo_tcm34-89251.jpg">
		</div>
		<div class="headerContent">
			<h3>Report Tracker</h3>
		</div>
		<div>
			<div class="straightLine"></div>
		</div>
		<div class="FormName">
			<div>
				<span>Test Drive</span>
			</div>
		</div>
	</div>


	<!--  BODY -->
	<div class="block center">
		<div class="container" style="padding: 0px; margin-top: 30px;">
			<div class="form-group " style="margin-left: 0; margin-right: 0;">

				<div class="col-md-2">
					<h5>
						Existing<input type="radio" id="existingCustomerRadio"
							name="customerEnquiry" value="existingCustomerRadio" checked>
						New <input id="newCustomerRadio" type="radio"
							name="customerEnquiry" value="newCustomerRadio">
					</h5>
				</div>
				<div class="col-md-2"
					style="padding-left:14px; padding-right: 0px;">
					<input placeholder="Phone Number" name="phoneNumberExisting"
						type="text" maxlength="100" id="phoneNumberExisting" tabindex="2"
						class="form-control" onfocus="validateName(this)"
						onblur="hideErrorTip()" />
				</div>
			</div>
		</div>
		<div class="container" id="newCustomerForm"
			style="padding: 0px; margin-left: 0px; margin-top: 30px; display: none;">
			<div class="form-horizontal">
				<div id="UpdatePanel2">

					<div class="form-group" style="margin-left: 0; margin-right: 0;">
						<div class="col-md-2">
							<h5>
								Name<span style="color: Red">*</span>
							</h5>
						</div>
						<div class="col-md-5 ">
							<div class="col-xs-2"
								style="padding-left: 0px; padding-right: 0px;">
								<select name="cbosal_ID" id="cbosal_ID" tabindex="1"
									class="form-control" onfocus="validateSalutation(this)"
									onblur="hideErrorTip()">
									<option value="-1">-----</option>
									<option value="1">Mr.</option>
									<option value="2">Ms.</option>
									<option value="3">Mrs.</option>
									<option value="4">Dr.</option>

								</select>
							</div>
							<div class="col-xs-10"
								style="padding-left: 10px; padding-right: 0px;">
								<input name="txtcnt_Name" type="text" maxlength="100"
									id="txtcnt_Name" tabindex="2" class="form-control"
									onfocus="validateName(this)" onblur="hideErrorTip()" />
							</div>
						</div>
						<div class="col-md-4"></div>
					</div>

					<div class="form-group" style="margin-left: 0; margin-right: 0;">
						<div class="col-md-2">
							<h5>
								Company<span style="color: Red">*</span>
							</h5>
						</div>
						<div class="col-md-5 ">
							<input name="txtcnt_Company" type="text" maxlength="100"
								id="txtcnt_Company" tabindex="3" class="form-control"
								onFocus="validateCompany(this)" onblur="hideErrorTip()" />
						</div>
						<div class="col-md-5"></div>
					</div>

					<div class="form-group" style="margin-left: 0; margin-right: 0;">
						<div class="col-md-2">
							<h5>
								Address<span style="color: Red">*</span>
							</h5>
						</div>
						<div class="col-md-5 ">
							<input name="txtcnt_Address1" type="text" maxlength="100"
								id="txtcnt_Address1" tabindex="4" class="form-control"
								onFocus="validateAddress(this)" onblur="hideErrorTip()" />
						</div>
						<div class="col-md-5"></div>
					</div>

					<div class="form-group" style="margin-left: 0; margin-right: 0;">
						<div class="col-md-2">
							<h5></h5>
						</div>
						<div class="col-md-5 ">
							<input name="txtcnt_Address2" type="text" maxlength="100"
								id="txtcnt_Address2" tabindex="5" class="form-control" />
						</div>
						<div class="col-md-5"></div>
					</div>

					<div class="form-group" style="margin-left: 0; margin-right: 0;">
						<div class="col-md-2">
							<h5></h5>
						</div>
						<div class="col-md-5 ">
							<input name="txtcnt_Address3" type="text" maxlength="100"
								id="txtcnt_Address3" tabindex="6" class="form-control" />
						</div>
						<div class="col-md-5"></div>
					</div>

					<div id="pnlStateCity">


						<div class="form-group" style="margin-left: 0; margin-right: 0;">
							<div class="col-md-2">
								<h5>
									State<span style="color: Red">*</span>
								</h5>
							</div>
							<div class="col-md-5 ">
								<select name="cbosta_ID"
									onchange="javascript:setTimeout(&#39;__doPostBack(\&#39;cbosta_ID\&#39;,\&#39;\&#39;)&#39;, 0)"
									id="cbosta_ID" tabindex="7" class="form-control"
									onFocus="validateState(this)" onblur="hideErrorTip()">
									<option selected="selected" value="-1">Select State</option>
									<option value="1">Andhra Pradesh</option>
									<option value="2">Arunachal Pradesh</option>
									<option value="3">Assam</option>
									<option value="4">Bihar</option>
									<option value="5">Chhattisgarh</option>
									<option value="6">Delhi</option>
									<option value="7">Goa</option>
									<option value="8">Gujarat</option>
									<option value="9">Haryana</option>
									<option value="10">Himachal Pradesh</option>
									<option value="11">Jammu &amp; Kashmir</option>
									<option value="12">Jharkhand</option>
									<option value="13">Karnataka</option>
									<option value="14">Kerala</option>
									<option value="15">Madhya Pradesh</option>
									<option value="16">Maharashtra</option>
									<option value="17">Manipur</option>
									<option value="18">Meghalaya</option>
									<option value="19">Mizoram</option>
									<option value="20">Nagaland</option>
									<option value="21">Orissa</option>
									<option value="22">Punjab</option>
									<option value="23">Rajasthan</option>
									<option value="24">Sikkim</option>
									<option value="25">Tamil Nadu</option>
									<option value="30">Telangana</option>
									<option value="26">Tripura</option>
									<option value="27">Uttar Pradesh</option>
									<option value="28">Uttaranchal</option>
									<option value="29">West Bengal</option>

								</select>
							</div>
							<div class="col-md-5"></div>
						</div>

						<div class="form-group" style="margin-left: 0; margin-right: 0;">
							<div class="col-md-2">
								<h5>
									City<span style="color: Red">*</span>
								</h5>
							</div>
							<div class="col-md-5 ">
								<select name="cbocty_ID"
									onchange="javascript:setTimeout(&#39;__doPostBack(\&#39;cbocty_ID\&#39;,\&#39;\&#39;)&#39;, 0)"
									id="cbocty_ID" tabindex="8" class="form-control"
									onFocus="validateCity(this)" onblur="hideErrorTip()">
									<option selected="selected" value="-2">Select City</option>

								</select>
							</div>
							<div class="col-md-5"></div>
						</div>



					</div>
					<div class="form-group" style="margin-left: 0; margin-right: 0;">
						<div class="col-md-2">
							<h5>
								Pincode<span style="color: Red">*</span>
							</h5>
						</div>
						<div class="col-md-5 ">
							<input name="txtcnt_PinCode" type="text" maxlength="6"
								id="txtcnt_PinCode" tabindex="10" class="form-control"
								onFocus="validatePinCode(this)"
								onkeypress="return isNumberKey(event)" onblur="hideErrorTip()" />
						</div>
						<div class="col-md-5"></div>
					</div>


					<div id="pnlMobileNo">


						<div class="form-group" style="margin-left: 0; margin-right: 0;">
							<div class="col-md-2">
								<h5>
									Mobile<span style="color: Red">*</span>
								</h5>
							</div>
							<div class="col-md-5 ">
								<div class="col-xs-9" style="padding: 0;">
									<input name="txtcnt_Mobile" type="text" maxlength="10"
										id="txtcnt_Mobile" tabindex="11" class="form-control"
										onkeypress="return isNumberKey(event)"
										onFocus="validateMobileNumber(this)" onblur="hideErrorTip()" />
									<span style="font-size: 12px"> (Enter 10 digit number)</span>
								</div>

							</div>

							<div class="col-md-5"></div>
						</div>
					</div>

					<div class="form-group" style="margin-left: 0; margin-right: 0;">
						<div class="col-md-2">
							<h5>
								Email<span style="color: Red">*</span>
							</h5>
						</div>
						<div class="col-md-5 ">
							<input name="txtcnt_Email" type="text" maxlength="100"
								id="txtcnt_Email" tabindex="14" class="form-control"
								onfocus="validateEmail(this)" onblur="hideErrorTip()" />
						</div>
						<div class="col-md-5"></div>
					</div>

				</div>

			</div>

		</div>


		<div class="container" style="padding: 0px; margin-top: 30px;">
			<div class="form-group" style="margin-left: 0; margin-right: 0;">
				<div class="col-md-2">
					<h5>Dealer</h5>
				</div>
				<div class="col-md-5">
					<select name="cbodlr_ID" id="cbodlr_ID" tabindex="15"
						class="form-control" size="1" onFocus="validateDealer(this)"
						onblur="hideErrorTip()">
						<option value="-1">Select Dealer</option>
						<option value="1">Hyderabad</option>
						<option value="2">Vijayawada</option>
						<option value="269">Tirupati</option>
						<option value="326">Viashakapatnam</option>
					</select>
				</div>

				<div class="col-md-5"></div>
			</div>
			<div class="form-group"
				style="clear: both; margin-left: 0; margin-right: 0;">
				<div class="col-md-2">
					<h5>Model</h5>
				</div>
				<div class="col-md-5">
					<select name="cbovar_ID" id="cbovar_ID" tabindex="16"
						class="form-control" size="1" onFocus="validateModel(this)"
						onblur="hideErrorTip()">
						<option value="-1">Select Model</option>
						<option value="1">Etios Liva</option>
						<option value="14">Etios</option>
						<option value="29">Innova</option>
						<option value="37">Corolla Altis</option>
						<option value="48">Corolla Altis Limited</option>
						<option value="55">Fortuner</option>
						<option value="64">Prius</option>
						<option value="67">Land Cruiser Prado</option>
						<option value="69">Land Cruiser</option>
						<option value="97">Etios Cross</option>
						<option value="114">Camry</option>
						<option value="115">Etios Liva Limited Edition</option>
						<option value="116">Etios Cross Limited Edition</option>
						<option value="117">Innova Crysta</option>

					</select>
				</div>

				<div class="col-md-5"></div>
			</div>


		</div>

		<div class="container" style="padding: 0px; margin-top: 30px;">
			<div class="form-group"
				style="clear: both; margin-left: 0; margin-right: 0;">
				<div class="col-md-2"
					style="padding-left: 10px; padding-right: 0px;">
					<p>Date:</p>
				</div>
				<div class="col-md-2"
					style="padding-left: 17px; padding-right: 0px; padding-top: 0px">
					<input class="form-control" type="text" id="datepickerFrom"
						name="datepickerFrom">

				</div>
				<div class="col-md-5"></div>
			</div>
		</div>

		<div class="container" style="padding: 0px;margin-top: 20px">
			<div class="form-horizontal">
				<div id="UpdatePanel4">
					<div class="form-group" style="margin-left: 0; margin-right: 0;">
						<div class="col-md-2">
							<h5></h5>
						</div>
						<div class="col-md-5 ">
							<input type="submit" name="btnSubmit" value="Submit"
								onclick="return validate();WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions(&quot;btnSubmit&quot;, &quot;&quot;, true, &quot;&quot;, &quot;&quot;, false, false))"
								id="btnSubmit" class="btn btn-default" />

						</div>
						<div class="col-md-5"></div>
					</div>

				</div>

			</div>
		</div>
	</div>
</body>
</html>