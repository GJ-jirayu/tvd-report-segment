<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Report Segment</title>
<!-- Latest compiled and minified CSS -->
<!-- <link rel="stylesheet" href="../Utility/bootstrap-3.1.1/dist/css/bootstrap.min.css"> -->

<!-- Optional theme -->
<link rel="stylesheet" href="../Utility/bootstrap-3.1.1/dist/css/bootstrap-theme.min.css">

<!-- Latest compiled and minified JavaScript -->

<script src="../Utility/kendoCommercial/js/jquery.1.7.2.js"></script>
<script src="../Utility/bootstrap-3.1.1/dist/js/bootstrap.min.js"></script>

<!-- kendo ui -->

<link href="../Utility/kendoCommercial/styles/kendo.common.min.css" rel="stylesheet" />
<link href="../Utility/kendoCommercial/styles/kendo.default.min.css" rel="stylesheet" />
<script src="../Utility/kendoCommercial/js/kendo.all.min.js"></script>

<!-- kendo ui -->

<!-- jquery ui -->

<script src="../Utility/jqueryUi/js/jquery-ui-1.10.4.custom.min.js"></script>
<link  href="../Utility/jqueryUi/css/cupertino/jquery-ui-1.10.4.custom.min.css" rel="stylesheet" />
<script src="../Utility/jquery.multiAccordion.js"></script>

<!-- jquery ui -->

<!-- call js -->
<script src="../Controller/main.js"></script>
<script src="../Utility/jqueryUi/jquery.multiselect.js"></script>
<link href="../Utility/jqueryUi/jquery.multiselect.css" rel="stylesheet" />
<!-- call js -->
<style>
	body{
	font:12px Tahoma;
	}
	#mainBody{
	width:1000px;
	margin:auto;
	}
	.ui-accordion .ui-accordion-content{
	padding:0px;
	}
	.ui-multiselect{
	padding:2px;
	}
	.ui-button-text-only .ui-button-text{
	padding:2px;
	}
	.buttonN{
	padding:4px;
	}
	
	#loading {
	/*top:300px;*/
	width:180px;
	display:;
	position: fixed;
	z-index: 1000000;
	color: #000000;
	background: #ffffff;
	font-weight: bold;
	padding: 10px;
	padding-left:15px;
	padding-rigth:15px;
	border-radius: 5px;
	border: 1px solid #3BAAE3;
}

	#loading #loadText {
	display: inline;
}
	.ui-state-active .ui-icon{
	float:left;
	}
	
</style>

</head>
<body>


		<div id="loading">
			<table>
				<tr>
					<td><img src="../images/loader.gif"></td>
					<td><span id="loadText">Loading Parameter ... </span></td>
				</tr>
			</table>
			
			
		</div>
		
<div id="mainBody">
</div>

	<div id="accordion" class="accordion">
		<h3 id="customer_info">ข้อมูลลูกค้า</h3>
		<div>
		<center>
			<table class="tableParam">
				<tr>
					<td>
						CustomerCode
					</td>
					<td>
						<input type="text" name="paramCustomerCode" id="paramCustomerCode" value="All">
					</td>
					
					<td>
						CustomerPrefix
					</td>
					<td id="areaparamCustomerPrefix">
					<!-- 
						<select id="paramCustomerPrefix" name="paramCustomerPrefix"  class="mutiSelect" multiple="multiple">
							
							
							
							
							
						</select>
						
					 -->
					</td>
				</tr>
				<tr>
					
					<td>
						CustomerFirstName
					</td>
					<td>
						<input type="text" name="paramCustomerFirstName" id="paramCustomerFirstName" value="All">
					</td>
					
					
				
					
					<td>
						CustomerLastName
					</td>
					<td>
						<input type="text" name="paramCustomerLastName" id="paramCustomerLastName" value="All">
					</td>
				</tr>
				
				<tr>	
					<td >
						Gender
					</td>
					<td id="areaparamGender">
						<select id="paramGender" name="paramGender" class="mutiSelect" multiple="multiple">
							
							
							
							
							
						</select>
					</td>
					<td>
						CustomerType
					</td>
					<td id="areaparamCustomerType">
					
						<select id="paramCustomerType" name="paramCustomerType" class="mutiSelect" multiple="multiple">
							
							
							
							
							
						</select>
						
					</td>
					
					
					
					
					
					
				</tr>
				
				<tr>
					<td>
						CustomerStatus
					</td>
					<td id="areaparamCustomerStatus">
						<select id="paramCustomerStatus" name="paramCustomerStatus" class="mutiSelect" multiple="multiple">
							
							
							
							
							
						</select>
					</td>
					
					<td>
						CustomerSubStatus
					</td>
					<td id="areaparamCustomerSubStatus">
						<select id="paramCustomerSubStatus" name="paramCustomerSubStatus" class="mutiSelect" multiple="multiple">
							
							
							
							
							
						</select>
						
					</td>
				</tr>
				
				<tr>
					<td>
						CustomerSegment
					</td>
					<td id="areaparamCustomerSegment">
						<select id="paramCustomerSegment" name="paramCustomerSegment"  class="mutiSelect" multiple="multiple">
							
							
							
							
							
						</select>
					</td>
					
					
					
					
					
				
					<td>
						BusinessType 
					</td>
					<td id="areaparamBusineesType">
						<select id="paramBusineesType" name="paramBusineesType"  class="mutiSelect" multiple="multiple">
							
							
							
							
							
						</select>
					</td>
				</tr>
				
				<tr>	
					<td>
						CustomerGrade
					</td>
					<td id="areaparamCustomerGrade">
						<select id="paramCustomerGrade" name="paramCustomerGrade"  class="mutiSelect" multiple="multiple">
							
							
							
							
							
						</select>
					</td>
					<td>
						CustomerBirthMonthName
					</td>
					<td id="areaparamCustomerBirthMonthName">
						<select id="paramCustomerBirthMonthName" name="paramCustomerBirthMonthName"  class="mutiSelect" multiple="multiple">
							
							
							
							
							
						</select>
					</td>
					
				
					
					
				</tr>
				
				<tr>
					<td>
						CustomerBirthDateStart
					</td>
					<td>
						<input type="text" name="paramCustomerBirthDateStart" id="paramCustomerBirthDateStart" class="date" value="All">
					</td>
					
					<td>
						CustomerBirthDateEnd
					</td>
					<td>
						<input type="text" name="paramCustomerBirthDateEnd" id="paramCustomerBirthDateEnd" class="date" value="All" >
					</td>
				</tr>
				
				<tr>
					<td>
						CustomerCreatedDateStart
					</td>
					<td>
						<input type="text" name="paramCustomerCreatedDateStart" id="paramCustomerCreatedDateStart" class="date" value="All">
					</td>

					<td>
						CustomerCreatedDateEnd
					</td>
					<td>
						<input type="text" name="paramCustomerCreatedDateEnd" id="paramCustomerCreatedDateEnd" class="date">
					</td>
				</tr>
				<tr>	
					<td>
						AgeStart
					</td>
					<td>
						<input type="text" name="paramAgeStart" id="paramAgeStart" value="All">
					</td>
					<td>
						AgeEnd
					</td>
					<td>
						<input type="text" name="paramAgeEnd" id="paramAgeEnd" value="All">
					</td>
					
					
					
					
					
					
					
				</tr>
				<tr>
					<td>
						CustomerCareer
					</td>
					<td id="areaparamCustomerCareer">
						<select id="paramCustomerCareer" name="paramCustomerCareer"  class="mutiSelect" multiple="multiple">
	
						</select>
					</td>
					
					<td>
						CreditCard
					</td>
					<td id="areaparamCreditCard">
						<select id="paramCreditCard" name="paramCreditCard"  class="mutiSelect" multiple="multiple">
							
						</select>
					</td>
				</tr>
				<tr>
					<td>
						SMSFlag
					</td>
					<td id="areaparamSMSFlag">
						<select id="paramSMSFlag" name="paramSMSFlag"  class="mutiSelect" multiple="multiple">
							
							
							
							
							
						</select>
					</td>
				
					<td>
						MAILING_FLAG
					</td>
					<td id="areaparamMAILING_FLAG">
						<select id="paramMAILING_FLAG" name="paramMAILING_FLAG"  class="mutiSelect" multiple="multiple">
							
							
							
							
							
						</select>
					</td>
					
				</tr>
				<tr>
					<td>
						EMAIL_FLAG
					</td>
					<td id="areaparamEMAIL_FLAG">
						<select id="paramEMAIL_FLAG" name="paramEMAIL_FLAG"  class="mutiSelect" multiple="multiple">
							
							
							
							
							
						</select>
					</td>
					<td>
						PhoneFlag
					</td>
					<td id="areaparamPhoneFlag">
						<select id="paramPhoneFlag" name="paramPhoneFlag"  class="mutiSelect" multiple="multiple">
							
							
							
							
							
						</select>
					</td>
				</tr>
			</table>
			</center>
		</div>
		<h3 id="address_info">ข้อมูลที่อยู่</h3>
		<div>
			<center>
			<table class="tableParam">
				<tr>
					<td>
						AddressLocation

					</td>
					<td>
						<input type="text" name="paramAddressLocation" id="paramAddressLocation" value="All">
					</td>
					
					<td>
						AccommodationType

					</td>
					<td id="areaparamAccommodationType">
					
						<select id="paramAccommodationType" name="paramAccommodationType"  class="mutiSelect" multiple="multiple">
							
							
							
							
							
						</select>
						
					
					</td>
					
				</tr>
				<tr>
					
					<td>
						AddressNumber

					</td>
					<td>
						<input type="text" name="paramAddressNumber" id="paramAddressNumber" value="All">
					</td>

					<td>
						Moo

					</td>
					<td>
						<input type="text" name="paramMoo" id="paramMoo" value="All">
					</td>
					
				</tr>
				<tr>	
					<td >
						Soi

					</td>
					<td id="areaparamSoi">
						<input type="text" name="paramSoi" id="paramSoi" value="All">
					</td>
					<td>
						Road

					</td>
					<td id="areaparamRoad">
					
					<input type="text" name="paramRoad" id="paramRoad" value="All">
						
					</td>
					
					
					
					
					
					
				</tr>
				
				<tr>
					<td>
						Tumbon


					</td>
					<td id="areaparamTumbon">
						<input type="text" name="paramTumbon" id="paramTumbon" value="All">
					</td>
					
					<td>
						Amphur

					</td>
					<td id="areaparamAmphur">
						<input type="text" name="paramAmphur" id="paramAmphur" value="All">
						
					</td>
					
				</tr>
				<tr>
				<!-- 
				
					<td>
						RegionCode
 
					</td>
					<td>
						<input type="text" name="paramRegionCode" id="paramRegionCode" value="All">
					</td>
					<td>
						RegionName

					</td>
					<td>
						<input type="text" name="paramRegionName" id="paramRegionName" value="All">
						
					</td>
					
				 -->
				 <td>
						RegionName

					</td>
					<td id="areaparamRegion">
						<select id="paramRegion" name="paramRegion"  class="mutiSelect" multiple="multiple">
							

						</select>
					</td>
					
				 
				</tr>
				<tr>
					
					<td>
						Province

					</td>
					<td id="areaparamProvince">
						<select id="paramProvince" name="paramProvince"  class="mutiSelect" multiple="multiple">
							

						</select>
					</td>
					
					
					<td>
						AddressType

					</td>
					<td id="areaparamAddressType">
						<select id="paramAddressType" name="paramAddressType"  class="mutiSelect" multiple="multiple">

						</select>
					</td>

				</tr>
				
				<tr>
					<td>
						AddressGrade

					</td>
					<td id="areaparamAddressGrade">
						<select id="paramAddressGrade" name="paramAddressGrade"  class="mutiSelect" multiple="multiple">

						</select>
					</td>
					
					
				</tr>
			</table>
			</center>
		</div>
		<h3 id="employee_info">ข้อมูลเจ้าหน้าที่</h3>
		<div>
			<center>
			<table class="tableParam">
				<tr>
					<td>
						SaleRep
					
					</td>
					<td id="areaparamSaleRep">
					<select id="paramSaleRep" name="paramSaleRep"  class="mutiSelect" multiple="multiple">
							
							
							
							
							
						</select>
						
					</td>
					
					<td>
						SaleRepCode
					</td>
					<td>
					
						<input type="text" name="paramSaleRepCode" id="paramSaleRepCode" value="All">
						
					
					</td>
					
				</tr>
				<tr>
					<td>
						SaleRepFirstName


					</td>
					<td>
						<input type="text" name="paramSaleRepFirstName" id="paramSaleRepFirstName" value="All">
					</td>

					<td>
						SaleRepLastName


					</td>
					<td>
						<input type="text" name="paramSaleRepLastName" id="paramSaleRepLastName" value="All">
					</td>
					
				</tr>
				<tr>
					<td >
						Call Center BU

					</td>
					<td id="areaparamBu">
						<select id="paramBu" name="paramBu"  class="mutiSelect" multiple="multiple">
							
							
							
							
							
						</select>
					</td>
					<td>
						EmpStatus


					</td>
					<td id="areaparamEmpStatus">
					
					<select id="paramEmpStatus" name="paramEmpStatus"  class="mutiSelect" multiple="multiple">
							
							
							
							
							
						</select>
					</td>

				</tr>
				
				
			</table>
			</center>
		
		</div>
		<h3 id="history_contact_info">ประวัติการติดต่อ</h3>
		<div>
			<center>
			<table class="tableParam">
				<tr>
					<td>
						ContactDateStart

					
					</td>
					<td >
					<input type="text" name="paramContactDateStart" id="paramContactDateStart" class="date">
						
					</td>
					
					<td>
						ContactDateEnd

					</td>
					<td>
					
						<input type="text" name="paramContactDateEnd" id="paramContactDateEnd" class="date">
						
					
					</td>
					
				</tr>
				<tr>	
					<td>
						NotContactDateStart



					</td>
					<td>
						<input type="text" name="paramNotContactDateStart" id="paramNotContactDateStart" class="date">
					</td>

					<td>
						NotContactDateEnd



					</td>
					<td>
						<input type="text" name="paramNotContactDateEnd" id="paramNotContactDateEnd" class="date">
					</td>
					
				</tr>
				<tr>	
					<td >
						CallType


					</td>
					<td id="areaparamCallType">
						<select id="paramCallType" name="paramCallType"  class="mutiSelect" multiple="multiple">
							
							
							
							
							
						</select>
					</td>
					<td>
						NotCallType



					</td>
					<td id="areaparamNotCallType">
					
					<select id="paramNotCallType" name="paramNotCallType"  class="mutiSelect" multiple="multiple">
							
							
							
							
							
						</select>
					</td>

				</tr>
				<tr>
					<td>
						CallReson



					</td>
					<td id="areaparamCallReson">
						<select id="paramCallReson" name="paramCallReson"  class="mutiSelect" multiple="multiple">
							
							
							
							
							
						</select>
					</td>
					
					<td >
						CallAbnormolly


					</td>
					<td id="areaparamCallAbnormolly">
						<select id="paramCallAbnormolly" name="paramCallAbnormolly"  class="mutiSelect" multiple="multiple">
							
							
							
							
							
						</select>
					</td>
					
				</tr>
				<tr>
					<td>
						NotCallAbnormolly



					</td>
					<td id="areaparamNotCallAbnormolly">
					
					<select id="paramNotCallAbnormolly" name="paramNotCallAbnormolly"  class="mutiSelect" multiple="multiple">
							
							
							
							
							
						</select>
					</td>

					<td>
						CallResultName



					</td>
					<td id="areaparamCallResultName">
						<select id="paramCallResultName" name="paramCallResultName"  class="mutiSelect" multiple="multiple">

						</select>
					</td>
					
				</tr>
				
				
			</table>
			</center>
		</div>
		
		<h3 id="order_info">ประวัติการสั่งซื้อ</h3>
		<div>
			<center>
			<table class="tableParam">
				<tr>
					<td>
						InvoiceCreatedDateStart

					
					</td>
					<td >
					<input type="text" name="paramInvoiceCreatedDateStart" id="paramInvoiceCreatedDateStart" value="All" class="date">
						
					</td>
					
					<td>
						InvoiceCreatedDateEnd


					</td>
					<td>
					
						<input type="text" name="paramInvoiceCreatedDateEnd" id="paramInvoiceCreatedDateEnd" value="All" class="date">
						
					
					</td>
					
				</tr>
				<tr>
					<td>
						NotInvoiceCreatedDateStart
					</td>
					<td>
						<input type="text" name="paramNotInvoiceCreatedDateStart" id="paramNotInvoiceCreatedDateStart" value="All" class="date">
					</td>

					<td>
						NotInvoiceCreatedDateEnd




					</td>
					<td>
						<input type="text" name="paramNotInvoiceCreatedDateEnd" id="paramNotInvoiceCreatedDateEnd" value="All" class="date">
					</td>
					
				</tr>
				<tr>	
					<td >
						OrderCreatedDateStart



					</td>
					<td >
						<input type="text" name="paramOrderCreatedDateStart" id="paramOrderCreatedDateStart" value="All" class="date">
					</td>
					<td>
						OrderCreatedDateEnd




					</td>
					<td >
					<input type="text" name="paramOrderCreatedDateEnd" id="paramOrderCreatedDateEnd" value="All" class="date">
					</td>

				</tr>
				<tr>
					<td>
						NotOrderCreatedDateStart




					</td>
					<td >
						<input type="text" name="paramNotOrderCreatedDateStart" id="paramNotOrderCreatedDateStart" value="All" class="date">
					</td>
					
					<td >
						NotOrderCreatedDateEnd



					</td>
					<td >
						<input type="text" name="paramNotOrderCreatedDateEnd" id="paramNotOrderCreatedDateEnd" value="All" class="date">
					</td>
					
				</tr>
				<tr>
					<td>
						InvoiceCode




					</td>
					<td>
					
					<input type="text" name="paramInvoiceCode" id="paramInvoiceCode" value="All">
					</td>

					<td>
						OrderCode




					</td>
					<td>
						<input type="text" name="paramOrderCode" id="paramOrderCode" value="All">
					</td>
					
					
				</tr>
				<tr>

					<td>
						ProductCode


					
					</td>
					<td >
					<input type="text" name="paramProductCode" id="paramProductCode" value="All">
						
					</td>
					
					<td>
						NotProductCode


					</td>
					<td>
					
						<input type="text" name="paramNotProductCode" id="paramNotProductCode" value="All">
						
					
					</td>
					
					
					
					
				</tr>
				
				<tr>
					<td>
						ProductName




					</td>
					<td>
						<input type="text" name="paramProductName" id="paramProductName" value="All">
					</td>
					<td>
						NotProductName




					</td>
					
				
					<td>
						<input type="text" name="paramNotProductName" id="paramNotProductName" value="All">
					</td>
				</tr>
				<tr>
					
					<td >
						FrequencyStart



					</td>
					<td >
						<input type="text" name="paramFrequencyStart" id="paramFrequencyStart" value="All">
					</td>
					
					<td>
						FrequencyEnd




					</td>
					<td >
					
					<input type="text" name="paramFrequencyEnd" id="paramFrequencyEnd" value="All">
					</td>
				</tr>
				<tr>
					<td>
						InvoiceAmountStart




					</td>
					<td >
						<input type="text" name="paramInvoiceAmountStart" id="paramInvoiceAmountStart" value="All">
					</td>
					
					<td >
						InvoiceAmountEnd



					</td>
					<td >
						<input type="text" name="paramInvoiceAmountEnd" id="paramInvoiceAmountEnd" value="All">
					</td>
					

				</tr>
				<tr>
					<td>
						RetailPriceStart




					</td>
					<td >
					
					<input type="text" name="paramRetailPriceStart" id="paramRetailPriceStart" value="All">
					</td>
					<td>
						RetailPriceEnd




					</td>
					<td>
						<input type="text" name="paramRetailPriceEnd" id="paramRetailPriceEnd" value="All">
					</td>
					
				</tr>
				<tr>

					<td>
						OrderAmountStart


					
					</td>
					<td >
					<input type="text" name="paramOrderAmountStart" id="paramOrderAmountStart" value="All">
						
					</td>
					

					<td>
						OrderAmountEnd
					</td>
					<td>
					
						<input type="text" name="paramOrderAmountEnd" id="paramOrderAmountEnd" value="All">
						
					
					</td>
				</tr>
				<tr>
					
					<td>
						ShipmentDateStart




					</td>
					<td>
						<input type="text" name="paramShipmentDateStart" id="paramShipmentDateStart" value="All" class="date">
					</td>
					<td>
						ShipmentDateEnd




					</td>
					<td>
						<input type="text" name="paramShipmentDateEnd" id="paramShipmentDateEnd" value="All" class="date">
					</td>
					
					
				</tr>
				<tr>
					<td >
						SalesChannel



					</td>
					<td id="areaparamSalesChannel">
						<select id="paramSalesChannel" name="paramSalesChannel"  class="mutiSelect" multiple="multiple">
							
							
							
							
							
						</select>
					</td>
					<td>
						BU




					</td>
					<td id="areaparamBuOrderType">
					
					<select id="paramBuOrderType" name="paramBuOrderType"  class="mutiSelect" multiple="multiple">
							
							
							
							
							
						</select>
					</td>
					
					
				</tr>
				<tr>
					<td>
						OrderStatus




					</td>
					<td id="areaparamOrderStatus">
					
					<select id="paramOrderStatus" name="paramOrderStatus"  class="mutiSelect" multiple="multiple">
							
							
							
							
							
						</select>
					</td>	
					<td>
						ShipmentStatus




					</td>
				
					<td id="areaparamShipmentStatus">
						<select id="paramShipmentStatus" name="paramShipmentStatus"  class="mutiSelect" multiple="multiple">
							
							
							
							
							
						</select>
					</td>
					

				</tr>
				
				
			</table>
			</center>
		</div>
		
		<h3 id="history_payment_info">ประวัติการชำระ</h3>
		<div>
			<center>
			<table class="tableParam">
			   <tr>
			    	<td>PaymentTerm</td>
					<td id="areaparamPaymentTerm">
						<select id="paramPaymentTerm" name="paramPaymentTerm" class="mutiSelect" multiple="multiple">
							
							
							
							
							
						</select>
					</td>
					<td>Payment Date From  
					</td>
					<td>
						<input type="text" name="paramPaymentDateFrom" id="paramPaymentDateFrom" value="All" class="date">
					</td>
					<td>Payment Date To 
					</td>
					<td>
						<input type="text" name="paramPaymentDateTo" id="paramPaymentDateTo" value="All" class="date">
					</td>
				</tr>
			</table>
			</center>
		</div>
		
		<h3 id="campaign_info">ข้อมูลแคมเปญ</h3>
		<div>
			<center>
			<table class="tableParam">
			  <tr>
					<td>Call Out Campaign Date From

					</td>
					<td>
						<input type="text" name="paramCalloutCampaignDateForm" id="paramCalloutCampaignDateForm" value="All" class="date">
					</td>
					<td>Call Out Campaign Date To

					</td>
				
					<td >
						<input type="text" name="paramCalloutCampaignDateTo" id="paramCalloutCampaignDateTo" value="All" class="date">
					</td>
				</tr>
			   <tr>
			    	<td>CalloutCampaignCode
					</td>
					<td>
						<input type="text" name="paramCalloutCampaignCode" id="paramCalloutCampaignCode" value="All">
					</td>
					<td>CalloutCampaignName
					</td>
					<td >
						<input type="text" name="paramCalloutCampaignName" id="paramCalloutCampaignName" value="All">
					</td>
				</tr>
				<tr>
					<td>CalloutCampaignCreatedYear
					</td>
					<td id="areaparamCalloutCampaignCreatedYear">
						<select id="paramCalloutCampaignCreatedYear" name="paramCalloutCampaignCreatedYear" class="singleMuti">
							
							
							
							
							
						</select>
					</td>
				
			    	<td>CalloutProgramCreatedDateStart
					</td>
					<td >
						<input type="text" name="paramCalloutProgramCreatedDateStart" id="paramCalloutProgramCreatedDateStart" class="date">
					</td>
				</tr>
				<tr>
					<td>CalloutProgramCreatedDateEnd
					</td>
					<td>
						<input type="text" name="paramCalloutProgramCreatedDateEnd" id="paramCalloutProgramCreatedDateEnd" class="date">
					</td>
					<td>CalloutCampaign
					</td>
					<td id="areaparamCalloutCampaign">
						<select id="paramCalloutCampaign" name="paramCalloutCampaign"  class="mutiSelect" multiple="multiple">
							
							
							
							
							
						</select>
					</td>
				</tr>
				<tr>
			    	<td>CalloutProgram
					</td>
					<td id="areaparamCalloutProgram">
						<select id="paramCalloutProgram" name="paramCalloutProgram"  class="mutiSelect" multiple="multiple">
							
							
							
							
							
						</select>
					</td>
					<td>CalloutCampaignType
					</td>
					<td id="areaparamCalloutCampaignType">
						<select id="paramCalloutCampaignType" name="paramCalloutCampaignType"  class="mutiSelect" multiple="multiple">
							
							
							
							
							
						</select>
					</td>
				</tr>
				<tr>
					<td>CalloutCampaignStatus
					</td>
					<td id="areaparamCalloutCampaignStatus">
						<select id="paramCalloutCampaignStatus" name="paramCalloutCampaignStatus"  class="mutiSelect" multiple="multiple">
							
							
							
							
							
						</select>
					</td>
				</tr>
				
			</table>
			</center>
		</div>
		
		<h3 id="campaign_mail_info">ข้อมูลแคมเปญ-mail</h3>
		<div>
			<center>
			<table class="tableParam">
				<tr>
					<td>Mail Campaign Date From

					</td>
					<td>
						<input type="text" name="paramMailCampaignDateForm" id="paramMailCampaignDateForm" value="All" class="date">
					</td>
					<td>Mail Campaign Date To

					</td>
				
					<td >
						<input type="text" name="paramMailCampaignDateTo" id="paramMailCampaignDateTo" value="All" class="date">
					</td>
				</tr>
			   <tr>
			    	<td>MailCampaignCode

					</td>
					<td>
						<input type="text" name="paramMailCampaignCode" id="paramMailCampaignCode" value="All">
					</td>
					<td>MailCampaignName

					</td>
				
					<td >
						<input type="text" name="paramMailCampaignName" id="paramMailCampaignName" value="All">
					</td>
				</tr>
				<tr>
					<td>MailCampaignCreatedYear

					</td>
					<td id="areaparamMailCampaignCreatedYear">
						<select id="paramMailCampaignCreatedYear" name="paramMailCampaignCreatedYear" class="singleSelect">
							
							
							
							
							
						</select>
					</td>
	
			    	<td>MailProgramCreatedDateStart

					</td>
					<td >
						<input type="text" name="paramMailProgramCreatedDateStart" id="paramMailProgramCreatedDateStart" value="All" class="date">
					</td>
				</tr>
				<tr>
					<td>MailProgramCreatedDateEnd

					</td>
					<td>
						<input type="text" name="paramMailProgramCreatedDateEnd" id="paramMailProgramCreatedDateEnd" value="All" class="date">
					</td>
					<td>MailCampaign

					</td>
					<td id="areaparamMailCampaign">
						<select id="paramMailCampaign" name="paramMailCampaign"  class="mutiSelect" multiple="multiple">
							
							
							
							
							
						</select>
					</td>
				</tr>
				<tr>
			    	<td>MailProgram

					</td>
					<td id="areaparamMailProgram">
						<select id="paramMailProgram" name="paramMailProgram"  class="mutiSelect" multiple="multiple">
							
							
							
							
							
						</select>
					</td>
					<td>MailCampaignType

					</td>
					<td id="areaparamMailCampaignType">
						<select id="paramMailCampaignType" name="paramMailCampaignType"  class="mutiSelect" multiple="multiple">
							
							
							
							
							
						</select>
					</td>
				</tr>
				<tr>
					<td>MailCampaignStatus

					</td>
					<td id="areaparamMailCampaignStatus">
						<select id="paramMailCampaignStatus" name="paramMailCampaignStatus"  class="mutiSelect" multiple="multiple">
							
							
							
							
							
						</select>
					</td>
					

				<td>MailProgramStatus

					</td>
					<td id="areaparamMailProgramStatus">
						<select id="paramMailProgramStatus" name="paramMailProgramStatus"  class="mutiSelect" multiple="multiple">
							
							
							
							
							
						</select>
					</td>
				</tr>
			
			</table>
			</center>
		</div>
		
		<h3 id="rating_info">ข้อมูลRating</h3>
		<div>
			<center>
			<table class="tableParam">
			<tr>
			<td>ProductRatingGroup


					</td>
					<td id="areaparamProductRatingGroup">
						<select id="paramProductRatingGroup" name="paramProductRatingGroup"  class="mutiSelect" multiple="multiple">
							
							
							
							
							
						</select>
					</td>
					<td>Rating


					</td>
					<td id="areaparamRating">
						<select id="paramRating" name="paramRating"  class="mutiSelect" multiple="multiple">
			
						</select>
					</td>
				</tr>
				<tr>
					<td>NotRating


					</td>
					<td id="areaparamNotRating">
						<select id="paramNotRating" name="paramNotRating"  class="mutiSelect" multiple="multiple">
							
						</select>
					</td>
				</tr>
			</table>
			</center>
		</div>
		
		
		
	</div>
	<div id="footerButton">
		
		<table style="background:#F2F5F7;" width="100%">
			<tr >
				<td>จำนวนแถวที่ต้องการ <input type="text" name="paramDataLimit" id ="paramDataLimit" value="100000"><span id="resultCountData"></span></td>
				
			</tr>
			<tr>
				<td>
				<button id="submit" class="buttonN ">ตกลง</button><!--  <button id="cancle" class="buttonN ">ยกเลิก</button>-->
				<button id="countData" class="buttonN ">จำนวนแถวทั้งหมด</button>
				</td>
				
			</tr>
		</table>
			
	</div>
	<div id="areaResultCountData"></div>
</body>

</html>