<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link href="./css/dealer.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
.logo-local{
	padding-top: 25px;
	float:left;
}
.logo-global{
	float: right;
    padding-top: 30px;
    margin-right: 200px;
}
</style>
</head>
<body>
<div class="container">

  <div class="inner-page-main">
     <div>
           <img alt="" class="logo-local" src="./images/logo.png">
        </div>
        <div>
           <img alt="" class="logo-global" src="./images/logo_tcm34-89251.jpg">
      </div>
    <div class="row">
      <div class="sectiontitle">
        <h2>Test Drive</h2>
      </div>
      <div class="selcet-city-main">
        <div class="form-body-row-left">
          <label class="form-labels">Please Select your Dealer City</label>
        </div>
        <div class="form-body-row-right">
          <select class="form-controls" onchange="document.getElementById('iframe').src = this.options[this.selectedIndex].value">
            <option value="https://api.toyotabharat.com/testdrive-dlrform.aspx?dealer=41&dealerName=Harsha Toyota, Old Bombay Highway Kothaguda, Hyderabad">Old Bombay Highway Kothaguda, Hyderabad</option>
            <option value="https://api.toyotabharat.com/testdrive-dlrform.aspx?dealer=133&dealerName=Harsha Toyota, Renigunta - Chittoor bypass road, Tirupathi">Chittoor bypass road, Tirupathi</option>
            <option value="https://api.toyotabharat.com/testdrive-dlrform.aspx?dealer=70&dealerName=Harsha Toyota,Venkatachalam mandal, Nellore">Venkatachalam mandal, Nellore</option>
            <option value="https://api.toyotabharat.com/testdrive-dlrform.aspx?dealer=134&dealerName=Harsha Toyota, 233/1C, NH-7, Opp. Santosh Nagar, Kurnool">Kurnool</option>
            <option value="https://api.toyotabharat.com/testdrive-dlrform.aspx?dealer=98&dealerName=Harsha Toyota,Beside Balaji Hospital, Alandur, Chennai">Alandur, Chennai</option>
            <option value="https://api.toyotabharat.com/testdrive-dlrform.aspx?dealer=168&dealerName=Harsha Toyota, Vellapanchavadi, Chennai">Vellapanchavadi, Chennai</option>
            <option value="https://api.toyotabharat.com/testdrive-dlrform.aspx?dealer=234&dealerName=Harsha Toyota, No 5/6, CV Naidu Salai, Thiruvallur">CV Naidu Salai, Thiruvallur</option>
            <option value="https://api.toyotabharat.com/testdrive-dlrform.aspx?dealer=303&dealerName=Harsha Toyota, Sy no:112-10 B1,NH-44,Ananthapur">Ananthapur</option>
            <option value="https://api.toyotabharat.com/testdrive-dlrform.aspx?dealer=302&dealerName=Harsha Toyota, 
Block No 163, Madras Road, Kadapa">Madras Road, Kadapa</option>
            <option value="https://api.toyotabharat.com/testdrive-dlrform.aspx?dealer=322&dealerName=Harsha Toyota, D.NO. 5-5-1095, Malleshwari Complex, LB Nagar-500074">LB Nagar</option>
            <option value="https://api.toyotabharat.com/testdrive-dlrform.aspx?dealer=343&dealerName=Survey No. 125, Hydernagar (VILL), R R Distict Balanagar (MNDL), Telangana-500072">Hydernagar, Telangana</option>
            
            
          </select>
        </div>
       
      </div>
    </div>
     <div class="row">
    
    <!-- start iframe -->
    
     <form name="companyForm" method="post" action="./testdrive-dlrform.aspx?dealer=41&amp;dealerName=Harsha+Toyota%2c+Old+Bombay+Highway+Kothaguda%2c+Hyderabad" id="companyForm">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__LASTFOCUS" id="__LASTFOCUS" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUJNDAzNjI2NjU1DxQrAARkAikFFHd3dy5oYXJzaGF0b3lvdGEuY29tBSpodHRwOi8vd3d3LmhhcnNoYXRveW90YS5jb20vdGVzdGRyaXZlLmh0bWwWAgIDD2QWCAIFDxBkEBUFBS0tLS0tA0RyLgNNci4ETXJzLgNNcy4VBQItMQNEci4DTXIuBE1ycy4DTXMuFCsDBWdnZ2dnZGQCDw9kFgJmD2QWBAIBDxBkEBUfECAgU2VsZWN0IFN0YXRlICAOQW5kaHJhIFByYWRlc2gRQXJ1bmFjaGFsIFByYWRlc2gFQXNzYW0FQmloYXIMQ2hoYXR0aXNnYXJoBURlbGhpA0dvYQdHdWphcmF0B0hhcnlhbmEQSGltYWNoYWwgUHJhZGVzaA9KYW1tdSAmIEthc2htaXIJSmhhcmtoYW5kCUthcm5hdGFrYQZLZXJhbGEOTWFkaHlhIFByYWRlc2gLTWFoYXJhc2h0cmEHTWFuaXB1cglNZWdoYWxheWEHTWl6b3JhbQhOYWdhbGFuZAZPcmlzc2EGUHVuamFiCVJhamFzdGhhbgZTaWtraW0KVGFtaWwgTmFkdQlUZWxhbmdhbmEHVHJpcHVyYQ1VdHRhciBQcmFkZXNoC1V0dGFyYW5jaGFsC1dlc3QgQmVuZ2FsFR8CLTEBMQEyATMBNAE1ATYBNwE4ATkCMTACMTECMTICMTMCMTQCMTUCMTYCMTcCMTgCMTkCMjACMjECMjICMjMCMjQCMjUCMzACMjYCMjcCMjgCMjkUKwMfZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZxYBZmQCAw8QZGQWAWZkAhcPEGQQFQsPIFNlbGVjdCBNb2RlbCAgC0V0aW9zIExpdmEgGkV0aW9zIExpdmEgTGltaXRlZCBFZGl0aW9uBUV0aW9zC0V0aW9zIENyb3NzDUlubm92YSBDcnlzdGENQ29yb2xsYSBBbHRpcwhGb3J0dW5lcgVDYW1yeRJMYW5kIENydWlzZXIgUHJhZG8MTGFuZCBDcnVpc2VyFQsCLTEBMQMxMTUCMTQCOTcDMTE3AjM3AjU1AzExNAI2NwI2ORQrAwtnZ2dnZ2dnZ2dnZ2RkAhkPZBYCZg9kFgICAQ8QZA8WAwIBAgICAxYDEAUGQXVndXN0BQZBdWd1c3RnEAUJU2VwdGVtYmVyBQlTZXB0ZW1iZXJnEAUHT2N0b2JlcgUHT2N0b2JlcmcWAWZkGAIFHl9fQ29udHJvbHNSZXF1aXJlUG9zdEJhY2tLZXlfXxYBBQ1jaGtQcm9tb3Rpb25zBQljcHRWZXJpZnkPBSQyMGZhZTA0Mi0wODYyLTRkZjQtOWU2YS03MjdjMzVkZDMzY2ZkdgLQHywvWZh/evgwXi4EGZqEQg6dKcg8mGm0I2BaBVI=" />
</div>

<script type="text/javascript">
//<![CDATA[
var theForm = document.forms['companyForm'];
if (!theForm) {
    theForm = document.companyForm;
}
function __doPostBack(eventTarget, eventArgument) {
    if (!theForm.onsubmit || (theForm.onsubmit() != false)) {
        theForm.__EVENTTARGET.value = eventTarget;
        theForm.__EVENTARGUMENT.value = eventArgument;
        theForm.submit();
    }
}
//]]>
</script>


<script src="/WebResource.axd?d=cIIiUVRQuo38SobZ960m4VBV0PHZGbeRMfWwPkGFG3hF_G-y6e892krURWM_pvYepKu4OxYbyQ7Jr8Hm9LQnIGGyXJlpD-AfHlrcnVsq7fI1&amp;t=635802961220000000" type="text/javascript"></script>


<script src="/ScriptResource.axd?d=X7a-whXVuJvY1As_OJuwhBphfW3TN6go5nJxt_Ko11qstD4ONwEo0SUOnJ8fuwCYVVpYb_2U5ddhbNSFJt3FI1BL-tPU-i00lVzd3qHjShkx_c0bDeAEtX-5jDh8zLhLI5iSda5S3TV-V0hemT-xiw2&amp;t=23c9c237" type="text/javascript"></script>
<script type="text/javascript">
//<![CDATA[
if (typeof(Sys) === 'undefined') throw new Error('ASP.NET Ajax client-side framework failed to load.');
//]]>
</script>

<script src="/ScriptResource.axd?d=dIY4zwJ6OUCQ-lLjaWTLI7AhwW-TtGofsy6cfEt3UQ93ih6Wsn0sAEjgXscKin1OYJHucIRNOJVu2o2yoySu7DA--sRKWZzNAEflA2Pmh-R7eETaJSlIkCXBZQ_MrUj7tUbDei7f0z7sPyqw1YeyqA2&amp;t=23c9c237" type="text/javascript"></script>
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="13AAC466" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEdAFe2G/SVT8+FmlVcaPqIxMytSy9UrZnG1KvKmrWQhzAfDEXBIIISJZVWPnqQ5ErUhL30IUysrrnfsrqw+CWCB9j6gSOae5HKFLyCij9nFG+PambHhUfmYCgLDio3pvpWa0OamTOseBRHwGrpncVbRauaUMEpfOiqfDmvvrBHma0V3YIgEAv/6dYHiqjfSCoUGO2R9wdLasy4nE4in1lbMhOBAwGeHdkZXQEcXugVND3plQgXIWwlCUwn60bViOG+9Wh58RHWv/Op4AffoXB2s5zMH2WQR86fMQRvRnaD359uvFj8yjw8Asl4bBpafPFKjF2UzjjsdTp9zJdYXmGP6dc+8aRd7mPq2+Cyp1vv4EWD/1BxVb/LPgm6ntGiwRFTAKxEcPdB03yIRXc97S+FgOpQUq1KIuLCrMWBXZtKzE2ER57VGhOYVEY1Yfathvy/Zmg/mGwjfJUUOVgq8QvpT5IovoMDq87vrTEK6n1qXs4kjHnP6PLHnraqeQaiV4T4RHRsnRkEIrhrCtZs+dLAdHFKIGXnNE8lk7Gq9hirWUxHpR/NEDSPT3TVQKDFI2JGm7ASbxPLMke/eRf3ryvGZ7Le4X53lifNJbb9bAaP01A/VEFYzGEDWy9B+8osQ4XQbH5ZV7DtE7jBTgWkFabvPzifK3GReMh6ogWGuPzeYf4db+vy+wR+G0Mt9rGOgm6onml13bCQMbZ788QhAmmirtlhPCqXNuyrLHnMGjN//DswIa3vdy8ZUFdBwzWg+GZCLXZtUde7DSsja4AJKVbqZtfAcM305O/tG7L4vANe8B1ZIAXbGcd9PbsICTke47fofEhGDTt6f6q1JGnPRtSv54pg0deOBPQiQ+mJJu0xQaCMkS3eHaXtCw3W1qx/Ef7jiyP5ssM1Bm9o2/q2lb/keh438jHPBMflEoAxIbBRLmeVg6WaUrazRUDoCce5TaV7yiV6dXCr3mkk/VZXa36jGcIY1exO5+u8uaWjJdkhxdGjqW02nQ4IdacN7CPLB2/CUUuSTlRcZAHgNkePfEyFWeabgQbYw1NhkLgPLxAEIKCuq5Sxx/aSWm3SB1hf6rgdzJDR2Q72QLut2eJiwwX93a33U8V+GDwPgprQBw5rFm6tO65ORmQgNdWJtGqF4deXX9ENn779OYv4zygZBimH392ZIZXspMZn7DRLGDOWYwUN1B6In2l/dw+kJw5u61NF0NK/bd/65a2QE4irYhtvWo4TxWOBc6RrZnBF0Siqe7mmEYr8tLHWKLNjHOJrBEYSUZVFgRTKRatPZFV3dTxYfNwJMLlWLF/1g2s/IMfZnNvRCL6UMuhsLP0kqxViwaQhm1yboil3JJUwVnWL8+5qT46Yw5HxwSfLE4go4jzTdiqGM0J1kcL+1PtMPFZNRjcha3saRYKD2/M7URUi26h6vRlSPdeidAekrakJ2qEvV6TYFKP9ljy45OeXtA0sPr6yXj3JvnvDmh+Ta6HvGr7rqr10LIf17kRBMZDm+JwtZWdA1yU97dpfY92/yQLyencRkgaa+t4dVU+jyxJzY6mitxWQtjYqFxAd/lKAjn2OSU5uYilM/1Ub+bdj0vkbWilJ6lBbewfhHuzUT05H60qrg69fL8inibvIiiD3YKW/B+wSdpF00saD6s2kAeALQ+tJCBajwLy0xlCMHJalVO9vcODh0qoEDEOzuciB5AK41V/L8TuXRswfKjFTluoj8f9KeQfv/to93V8KaLc+DwQ3t9mR7ohmwawJLD1aW/st6tWLOObA1kG3LOU8hOW/7Tej3hXY66Npl5ZVBqR4OAnuya46AffDqdo095XZcn+dWNpuTDzmltaUM7aEAN+g9cP/m12a/JYhAoC9lX8yX+TdKI57djb8z/R2EsSDlnv1DqtdzA==" />
</div>
        <script type="text/javascript">
//<![CDATA[
Sys.WebForms.PageRequestManager._initialize('ScriptManager1', 'companyForm', ['tpnlMessage','','tpnlLoadStateCity','','tpnlMobileNo','','tpnlLoadMMddyyyy','','tpnlCapcha','','tpnlSubmit',''], [], [], 90, '');
//]]>
</script>

   <div class="container">
  <div class="inner-page-main">  
    <div class="row">  

        <div id="pnlMessage">
	
                <div id="divMessage" class="warning"></div>
                
</div>
      <div class="selcet-city-main">
            
        <h3 class="info-head">By providing us with accurate Information, that will enable us to reach you faster</h3>
      </div>
    </div>
    <div class="row">
      <div class="form-container">
        <div class="form-head"> Personal Information:</div>
        <div class="form-body">
          <div class="form-body-row">
            <div class="form-body-row-left">
              <label class="form-labels">Name<sup style="color:#F00">*</sup> </label>
            </div>
            <div class="form-body-row-right">
              <div style="width:24.5%; float:left; margin-right:5px;">               
                  <select name="cbotra_Salutation" id="cbotra_Salutation" tabindex="1" class="form-controls" onFocus="validateSalutation(this)" onblur="hideErrorTip()">
	<option value="-1">-----</option>
	<option value="Dr.">Dr.</option>
	<option value="Mr.">Mr.</option>
	<option value="Mrs.">Mrs.</option>
	<option value="Ms.">Ms.</option>

</select>
              </div>
              <div style="width:73%; float:left;" >               
                  <input name="txttra_Name" type="text" maxlength="100" id="txttra_Name" tabindex="2" class="form-controls text" onFocus="validateName(this)" onblur="hideErrorTip();changeCase(this)" />
              </div>
            </div>
          </div>
          <div class="form-body-row">
            <div class="form-body-row-left">
              <label class="form-labels">Address<sup style="color:#F00">*</sup> </label>
            </div>
            <div class="form-body-row-right">           

                <input name="txttra_Address1" type="text" maxlength="100" id="txttra_Address1" tabindex="3" class="form-controls text" onFocus="validateAddress(this)" onblur="hideErrorTip()" />
            </div>
          </div>
            <div class="form-body-row">
            <div class="form-body-row-left">
              <label class="form-labels"> </label>
            </div>
            <div class="form-body-row-right">             
                 <input name="txttra_Address2" type="text" maxlength="100" id="txttra_Address2" tabindex="4" class="form-controls text" />
            </div>
          </div>

            <div class="form-body-row">
            <div class="form-body-row-left">
              <label class="form-labels"> </label>
            </div>
            <div class="form-body-row-right">             
                <input name="txttra_Address3" type="text" maxlength="100" id="txttra_Address3" tabindex="5" class="form-controls text" />
            </div>
          </div>
            <div id="pnlLoadStateCity">
	
          <div class="form-body-row">
            <div class="form-body-row-left">
              <label class="form-labels">State<sup style="color:#F00">*</sup> </label>
            </div>
            <div class="form-body-row-right">            

                <select name="cbosta_ID" onchange="javascript:setTimeout(&#39;__doPostBack(\&#39;cbosta_ID\&#39;,\&#39;\&#39;)&#39;, 0)" id="cbosta_ID" tabindex="6" class="form-controls" onFocus="validateState(this)" onblur="hideErrorTip()">
		<option selected="selected" value="-1">  Select State  </option>
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
          </div>
          <div class="form-body-row">
            <div class="form-body-row-left">
              <label class="form-labels">City </label>
            </div>
            <div class="form-body-row-right">            

                 <select name="cbocty_ID" onchange="javascript:setTimeout(&#39;__doPostBack(\&#39;cbocty_ID\&#39;,\&#39;\&#39;)&#39;, 0)" id="cbocty_ID" tabindex="7" class="form-controls" onFocus="validateCity(this)" onblur="hideErrorTip()">
		<option selected="selected" value="-2">  Select City  </option>

	</select>
            </div>
          </div>
                      
                      
</div>

              
          <div class="form-body-row">
            <div class="form-body-row-left">
              <label class="form-labels">Pincode<sup style="color:#F00">*</sup> </label>
            </div>
            <div class="form-body-row-right">
                <input name="txttra_PinCode" type="text" maxlength="6" id="txttra_PinCode" tabindex="9" class="form-controls text" onFocus="validatePinCode(this)" onkeypress="return isNumberKey(event)" onblur="hideErrorTip()" />
            </div>
          </div>
         

       <div id="pnlMobileNo">
	

                                    <div class="form-body-row">
                                        <div class="form-body-row-left">
                                            <label class="form-labels">Mobile<span style="color:Red">*</span></label>
                                        </div>
                                        <div class="form-body-row-right">
                                            <div class="form-body-block">
                                                <input name="txttra_Mobile" type="text" maxlength="10" id="txttra_Mobile" tabindex="10" onFocus="validateMobileNumber(this)" onkeypress="return isNumberKey(event)" onblur="hideErrorTip()" class="form-controls text" />
                                            </div>
                                            <div class="form-body-block">
                                                <input type="submit" name="btnVerify" value="Verify" onclick="return generateOtp();WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions(&quot;btnVerify&quot;, &quot;&quot;, true, &quot;&quot;, &quot;&quot;, false, false))" id="btnVerify" tabindex="11" class="btn-verify" onFocus="btnVerify_Focus(this);" style="width: 98px;" />

                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-body-row" id="divOtp" style="display: none;">
                                        <div class="form-body-row-left">
                                            <label class="form-labels">OTP<span style="color:Red">*</span></label>
                                        </div>
                                        <div class="form-body-row-right">
                                            <input name="txtOtp" type="text" maxlength="4" id="txtOtp" tabindex="12" class="form-controls text" onkeypress="return isNumberKey(event)" onkeyup="return validateOtpCode(this);" onblur="hideErrorTip()" onFocus="txtOtp_Focus(this);" style="width: 200px;" />
                                            <span style="font-size: 12px">(Enter your OTP)</span>

                                        </div>
                                    </div>

                                
</div>

          <div class="form-body-row">
            <div class="form-body-row-left">
              <label class="form-labels">Email<sup style="color:#F00">*</sup> </label>
            </div>
            <div class="form-body-row-right">             
                <input name="txttra_Email" type="text" maxlength="100" id="txttra_Email" tabindex="13" class="form-controls text" onfocus="validateEmail(this)" onblur="hideErrorTip()" />
            </div>
          </div>
          
       
        </div>
      </div>
      <div class="form-container">
      <div class="form-head">Select a model for Test Drive:</div>
      <div class="form-body">
        <div class="form-body-row">
          <div class="form-body-row-left">
            <label class="form-labels">Model<sup style="color:#F00">*</sup> </label>
          </div>
          <div class="form-body-row-right">           
              <select name="cbomod_ID" id="cbomod_ID" tabindex="14" size="1" class="form-controls" onFocus="validateModel(this)" onblur="hideErrorTip()">
	<option value="-1"> Select Model  </option>
	<option value="1">Etios Liva </option>
	<option value="115">Etios Liva Limited Edition</option>
	<option value="14">Etios</option>
	<option value="97">Etios Cross</option>
	<option value="117">Innova Crysta</option>
	<option value="37">Corolla Altis</option>
	<option value="55">Fortuner</option>
	<option value="114">Camry</option>
	<option value="67">Land Cruiser Prado</option>
	<option value="69">Land Cruiser</option>

</select>
          </div>
        </div>        
      </div>
    </div><div id="pnlLoadMMddyyyy">
	
      <div class="form-container">
      <div class="form-head">Preferred Date:</div>
      <div class="form-body">
      <div class="form-body-row">
          <div class="form-body-row-left">
            <label class="form-labels">Date (mm/dd/yyyy)</label>
          </div>
          <div class="form-body-row-right">
              <div style="width:24%; float:left; margin-right:2%;">              
         <select name="cbotra_Month" onchange="javascript:setTimeout(&#39;__doPostBack(\&#39;cbotra_Month\&#39;,\&#39;\&#39;)&#39;, 0)" id="cbotra_Month" tabindex="15" class="form-controls" onFocus="validateMonth(this)" onblur="hideErrorTip()">
		<option selected="selected" value="-1"> Month </option>
		<option value="August">August</option>
		<option value="September">September</option>
		<option value="October">October</option>

	</select>   
              </div>
               <div style="width:36%; float:left; margin-right:2%;">
                <select name="cbotra_Day" id="cbotra_Day" tabindex="16" class="form-controls" onFocus="validateDate(this)" onblur="hideErrorTip()">
		<option value="-1"> Day </option>

	</select>
              </div>
              <div style="width:36%; float:left;" >
                 <select name="cbotra_Year" id="cbotra_Year" tabindex="17" class="form-controls">
		<option value="-1"> Year </option>

	</select>      
              </div>
            </div>
          
        </div>        
        
      </div>
    </div>

                      
</div>
      <div class="form-container">
      <div class="form-head">Preferred Time:</div>
      <div class="form-body">
      <div class="form-body-row">
            <div class="form-body-row-left">
            <label class="form-labels">Time:</label>
            </div>
            <div class="form-body-row-right">
           <div style="width:49%; float:left; margin-right:2%;">
              <select name="cbotra_Hour" id="cbotra_Hour" tabindex="18" size="1" class="form-controls" onFocus="validateHour(this)" onblur="hideErrorTip()">
	<option value="-1">Hour</option>
	<option value="09">09</option>
	<option value="10">10</option>
	<option value="11">11</option>
	<option value="12">12</option>
	<option value="13">13</option>
	<option value="14">14</option>
	<option value="15">15</option>
	<option value="16">16</option>
	<option value="17">17</option>
	<option value="18">18</option>

</select>
              </div>
            <div style="width:49%; float:left;">              
                <select name="cbotra_Minute" id="cbotra_Minute" tabindex="19" size="1" class="form-controls" onFocus="validateMinute(this)" onblur="hideErrorTip()">
	<option value="-1">Min</option>
	<option value="00">00</option>
	<option value="15">15</option>
	<option value="30">30</option>
	<option value="45">45</option>

</select>
              </div>         
          </div>
        </div>
          <div class="form-body-row">
          <div class="form-body-row-left">
            <label class="form-labels">Current Owned car:</label>
          </div>
          <div class="form-body-row-right">         
              <input name="txttra_CurrentOwnedCar" type="text" maxlength="50" id="txttra_CurrentOwnedCar" tabindex="20" class="form-controls text" onFocus="validateCurrentOwnedCar(this)" onblur="hideErrorTip()" size="32" />
          </div>
        </div>

          <div class="form-body-row">
            <div class="form-body-row-left"></div>
            <div class="form-body-row-right"> 
                <div class="i-wish-check-box">
              <div class="check-box-style">               
                  <input id="chkPromotions" type="checkbox" name="chkPromotions" tabindex="21" />
              </div>
              <div class="check-box-label"> Yes, I wish to receive information about Toyota Products & Promotional Offers.</div>
            </div>            
            </div>
          </div>

      </div>
    </div>      
      <div class="form-container">
        <div class="form-body">
          <div class="form-body-row">            
            <div class="form-body-row-left"></div>
            <div class="form-body-row-right">
              <div class="submit-btn">               
                   <div id="pnlSubmit">
	
                    <input type="submit" name="btnSubmit" value="Submit" onclick="return validate();WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions(&quot;btnSubmit&quot;, &quot;&quot;, true, &quot;&quot;, &quot;&quot;, false, false))" id="btnSubmit" name="btnSubmit" class="form-button" />
                        
</div>
              </div>
            </div>
          </div>

          <div class="form-body-row">
            <div class="disclaimer">
              <h3>Disclaimer: </h3>
              <p>The information that you submit will not be used or distributed for any reason other than to fulfill your request.</p>
              <p style="color:#f00; font-size:12px; text-align:right;"> * indicates mandatory</p>
            </div>
          </div>
        </div>
      </div>
  </div>
</div>
</div>
    </form>
    
    
    <!-- end iframe -->
    
     <script type="text/javascript" src="http://dealer.toyotabharat.com/dealerV10/js/iframeheight.js">

</script>
<script type="text/javascript">









                        iFrameResize({
                                log                     : true,                  // Enable console logging
                                enablePublicMethods     : true,                  // Enable methods within iframe hosted page
                                resizedCallback         : function(messageData){ // Callback fn when resize is received
                                        $('p#callback').html(
                                                '&amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;lt;b&amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;gt;Frame ID:&amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;lt;\/b&amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;gt; '    + messageData.iframe.id +
                                                ' &amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;lt;b&amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;gt;Height:&amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;lt;\/b&amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;gt; '     + messageData.height +
                                                ' &amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;lt;b&amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;gt;Width:&amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;lt;\/b&amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;gt; '      + messageData.width + 
                                                ' &amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;lt;b&amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;gt;Event type:&amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;lt;\/b&amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;gt; ' + messageData.type
                                        );
                                },
                                messageCallback         : function(messageData){ // Callback fn when message is received
                                        $('p#callback').html(
                                                '&amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;lt;b&amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;gt;Frame ID:&amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;lt;\/b&amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;gt; '    + messageData.iframe.id +
                                                ' &amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;lt;b&amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;gt;Message:&amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;lt;\/b&amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;gt; '    + messageData.message
                                        );
                                        alert(messageData.message);
                                },
                                closedCallback         : function(id){ // Callback fn when iFrame is closed
                                        $('p#callback').html(
                                                '&amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;lt;b&amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;gt;IFrame (&amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;lt;\/b&amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;gt;'    + id +
                                                '&amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;lt;b&amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;gt;) removed from page.&amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;lt;\/b&amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;gt;'
                                        );
                                }
                        });


</script>
     </div>
</div>

</div>

</body>
</html>