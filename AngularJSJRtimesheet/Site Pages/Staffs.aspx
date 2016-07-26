﻿<style type="text/css">
		.thead-default{background-color:#fafafa;}
		.table-hover>tbody>tr:hover>td, .table-hover>tbody>tr:hover>th {
		  background-color: #d9edf7; /*rgb(51, 122, 183);
		  color:#eeeeee;*/
		}
</style>
	<div class="container panel-group" >
	  <h3>Staff page - TGI Timesheet system</h3>

	  <div class="panel panel-primary">
		<div class="panel-heading">Timesheet pending action</div>
		<ul class="list-group">
        <li class="list-group-item list-group-item-info">Draft (Timesheet not 
		submitted)</li>
	    <div class="panel-body table-responsive">      
		  <table class="table table-hover">
		    <thead class="thead-default">
		      <tr>
		        <th class="hidden-xs hidden-sm">Title</th>
		        <th>Form Number</th>
		        <th>Pay Period</th>
		        <th class="hidden-xs">Cost Code</th>
		        <th>Total hours</th>
		        <th class="hidden-xs hidden-sm">Status</th>
		        <th class="hidden-xs hidden-sm">Created</th>
     		    <th class="hidden-xs hidden-sm">Modified</th>
		        <th>Action</th>		        
		      </tr>
		    </thead>
		    <tbody>
		      <tr ng-repeat="ts in timesheets |filter:{ status: FORM_STATUS['statusNewForm'] }">
		        <td class="hidden-xs hidden-sm">{{ts.title}}</td>
				<td>{{ts.number}}</td>		        
		        <td>{{ts.Payperiod}}</td>
		        <td class="hidden-xs">{{ts.Costcode}}</td>
		        <td>{{ts.totalHours}}</td>
		        <td class="hidden-xs hidden-sm">{{ts.status}}</td>
		        <td class="hidden-xs hidden-sm">{{ts.created}}</td>
		        <td class="hidden-xs hidden-sm">{{ts.modified}}</td>
		        <td>{{ts.TSID}}</td>
		      </tr>
		    </tbody>
		  </table>
		  <br/><a href="#/AddNewTS" class="btn btn-primary btn-md" role="button">
		  	<span class="glyphicon glyphicon-plus-sign"></span>
		  	Add a new Timesheet
		  </a>
  		</div>


        <li class="list-group-item list-group-item-info">Timesheet return for 
		editing</li>
        </ul>
	    <div class="panel-body table-responsive">          
		  <table class="table table-hover">
		    <thead class="thead-default">
		      <tr>
		        <th class="hidden-xs hidden-sm">Title</th>
		        <th>Form Number</th>
		        <th>Pay Period</th>
		        <th class="hidden-xs">Cost Code</th>
		        <th>Total hours</th>
		        <th class="hidden-xs hidden-sm">Status</th>
		        <th class="hidden-xs">Approver</th>
		        <th class="hidden-xs hidden-sm">Approver comment</th>
		        <th class="hidden-xs hidden-sm">Modified</th>
		        <th>Action</th>		        
		      </tr>
		    </thead>
		    <tbody>
		      <tr ng-repeat="ts in timesheets |filter:{ status: FORM_STATUS['statusEditForm'] }">
		        <td class="hidden-xs hidden-sm">{{ts.title}}</td>
		        <td>{{ts.number}}</td>		        
		        <td>{{ts.Payperiod}}</td>
		        <td class="hidden-xs">{{ts.Costcode}}</td>
		        <td>{{ts.totalHours}}</td>
		        <td class="hidden-xs hidden-sm">{{ts.status}}</td>
		        <td class="hidden-xs">{{ts.approver}}</td>
		        <td class="hidden-xs hidden-sm">{{ts.approverComment}}</td>
		        <td class="hidden-xs hidden-sm">{{ts.modified}}</td>
		        <td>{{ts.TSID}}</td>
		      </tr>
		    </tbody>
		  </table>
  		</div>			
  					
	  </div>	  
	  
	  <div class="panel panel-warning">
		<div class="panel-heading">Waiting for manager approval</div>
	    <div class="panel-body table-responsive">          
		  <table class="table table-hover">
		    <thead class="thead-default">
		      <tr>
		        <th class="hidden-xs hidden-sm">Title</th>
		        <th>Form Number</th>		        
		        <th>Pay Period</th>
		        <th class="hidden-xs">Cost Code</th>
		        <th>Total hours</th>
		        <th class="hidden-xs hidden-sm">Status</th>
		        <th class="hidden-xs">Approver</th>
		        <th class="hidden-xs hidden-sm">Modified</th>
		        <th>Action</th>
		      </tr>
		    </thead>
		    <tbody>
		      <tr ng-repeat="ts in timesheets |filter:{ status: FORM_STATUS['statusForApproval'] }">
		        <td class="hidden-xs hidden-sm">{{ts.title}}</td>
		        <td>{{ts.number}}</td>		        
		        <td>{{ts.Payperiod}}</td>
		        <td class="hidden-xs">{{ts.Costcode}}</td>
		        <td>{{ts.totalHours}}</td>
		        <td class="hidden-xs hidden-sm">{{ts.status}}</td>
		        <td class="hidden-xs">{{ts.approver}}</td>
		        <td class="hidden-xs hidden-sm">{{ts.modified}}</td>
     		    <td>{{ts.TSID}}</td>
		      </tr>
		    </tbody>
		  </table>
  		</div>
	  </div>

	  <div class="panel panel-success">
		<div class="panel-heading">Approved or Paid records</div>
	    <div class="panel-body table-responsive">          
		  <table class="table table-hover">
		    <thead class="thead-default">
		      <tr>
		        <th class="hidden-xs hidden-sm">Title</th>
		        <th>Form Number</th>		        
		        <th>Pay Period</th>
		        <th class="hidden-xs">Cost Code</th>
		        <th>Total hours</th>
		        <th class="hidden-xs hidden-sm">Status</th>
		        <th class="hidden-xs">Approver</th>
		        <th class="hidden-xs hidden-sm">Approver comment</th>
		        <th class="hidden-xs hidden-sm">Modified</th>
		        <th>Action</th>		        
		      </tr>
		    </thead>
		    <tbody>
		      <tr ng-repeat="ts in timesheets |filter:{ status: FORM_STATUS['statusApproved'] }">
		        <td class="hidden-xs hidden-sm">{{ts.title}}</td>
		        <td>{{ts.number}}</td>		        
		        <td>{{ts.Payperiod}}</td>
		        <td class="hidden-xs">{{ts.Costcode}}</td>
		        <td>{{ts.totalHours}}</td>
		        <td class="hidden-xs hidden-sm">{{ts.status}}</td>
		        <td class="hidden-xs">{{ts.approver}}</td>
		        <td class="hidden-xs hidden-sm">{{ts.approverComment}}</td>
		        <td class="hidden-xs hidden-sm">{{ts.modified}}</td>
		        <td>{{ts.TSID}}</td>
		      </tr>
		    </tbody>
		  </table>
  		</div>
	  </div>

	  <div class="panel panel-danger">
		<div class="panel-heading">Rejected records</div>
	    <div class="panel-body table-responsive">          
		  <table class="table table-hover">
		    <thead class="thead-default">
		      <tr>
		        <th class="hidden-xs hidden-sm">Title</th>
		        <th>Form Number</th>		        
		        <th>Pay Period</th>
		        <th class="hidden-xs">Cost Code</th>
		        <th>Total hours</th>
		        <th class="hidden-xs hidden-sm">Status</th>
		        <th class="hidden-xs">Approver</th>
		        <th class="hidden-xs hidden-sm">Approver comment</th>
		        <th class="hidden-xs hidden-sm">Modified</th>
		        <th>Action</th>		        
		      </tr>
		    </thead>
		    <tbody>
		      <tr ng-repeat="ts in timesheets |filter:{ status: FORM_STATUS['statusDeclined'] }">
		        <td class="hidden-xs hidden-sm">{{ts.title}}</td>
		        <td>{{ts.number}}</td>		        
		        <td>{{ts.Payperiod}}</td>
		        <td class="hidden-xs">{{ts.Costcode}}</td>
		        <td>{{ts.totalHours}}</td>
		        <td class="hidden-xs hidden-sm">{{ts.status}}</td>
		        <td class="hidden-xs">{{ts.approver}}</td>
		        <td class="hidden-xs hidden-sm">{{ts.approverComment}}</td>
		        <td class="hidden-xs hidden-sm">{{ts.modified}}</td>
		        <td>{{ts.TSID}}</td>
		      </tr>
		    </tbody>
		  </table>
  		</div>		
	  </div>

</div>
