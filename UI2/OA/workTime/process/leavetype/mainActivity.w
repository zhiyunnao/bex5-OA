<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" xid="window" design="device:pc;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:334px;top:318px;" onLoad="modelLoad"> 
    <div component="$UI/system/components/justep/data/bizData" xid="mainData"
      directDelete="true" autoLoad="true" concept="OA_WM_LeaveType" columns=""
      onSaveCommit="saveCommit" limit="20">
      <reader action="/OA/workTime/logic/action/queryOA_WM_LeaveTypeAction"/>  
      <writer action="/OA/workTime/logic/action/saveOA_WM_LeaveTypeAction"/>  
      <creator action="/OA/workTime/logic/action/createOA_WM_LeaveTypeAction"/>  
      <calculateRelation relation="calcCheckBox"/> 
    <rule xid="rule1">
   <col name="fSalaryRule" xid="ruleCol1">
    <calculate xid="calculate1">
     <expr xid="default6"></expr></calculate> </col> 
   <col name="fIsReducHoliday" xid="ruleCol2">
    <calculate xid="calculate2">
     <expr xid="default7"></expr></calculate> </col> 
   <col name="fIsSalary" xid="ruleCol3">
    <calculate xid="calculate3">
     <expr xid="default8"></expr></calculate> </col> </rule></div>
  </div>  
  <span component="$UI/system/components/justep/bizFilter/bizFilter" xid="bizFilter" filterData="mainData" style="left:28px;top:290px;" /><div xid="view"> 
    <div component="$UI/system/components/justep/toolBar/toolBar" class="x-toolbar x-toolbar-spliter form-inline"
      xid="bar"> 
      <div component="$UI/system/components/justep/smartFilter/smartFilter"
        xid="smartFilter1" filterData="mainData" filterCols="fTypeCode,fTypeName,fIsSalary,fIsReducHoliday,fUseStatusName,fCreatePerName,fCreateTime,fRemark,fSequence"
        class="pull-right"> 
        <input type="text" class="form-control" placeholder="搜索" data-bind="valueUpdate: ['input', 'afterkeydown']"
          bind-value="$model.comp($element.parentElement).searchText" bind-change="$model.comp($element.parentElement).onInputChange.bind($model.comp($element.parentElement))"
          xid="input1"/> 
      </div>  
      <a component="$UI/system/components/justep/button/button" label=" 新建"
        class="btn btn-link btn-icon-left" icon="icon-plus" onClick="newBtnClick"
        xid="newBtn"> 
        <i class="icon-plus"/>  
        <span>新建</span> 
      </a>  
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left"
        label="保存" xid="saveBtn" onClick='{"operation":"mainData.save"}'> 
        <i xid="i3"/>  
        <span xid="label7">保存</span> 
      </a>  
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left"
        label="删除" xid="deleteBtn" onClick='{"operation":"mainData.delete"}'> 
        <i xid="i4"/>  
        <span xid="span7">删除</span> 
      </a>  
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left"
        xid="refreshBtn" onClick='{"operation":"mainData.refresh"}' label="刷新"> 
        <i xid="i2"/>  
        <span xid="span2">刷新</span> 
      </a>  
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left"
        label="查询" xid="filterBtn" icon="icon-android-search" onClick="{operation:'bizFilter.menu'}"> 
        <i xid="i5" class="icon-android-search"/>  
        <span xid="span8">查询</span> 
      </a> 
    <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="启用" xid="btnStartUse" onClick="btnStartUseClick">
   <i xid="i1"></i>
   <span xid="span10">启用</span></a>
  <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="全部启用" xid="btnAllUse" onClick="btnAllUseClick">
   <i xid="i6"></i>
   <span xid="span11">全部启用</span></a>
  <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="停用" xid="btnStopUse" onClick="btnStopUseClick">
   <i xid="i7"></i>
   <span xid="span12">停用</span></a></div>  
    </div>  
    
  <div component="$UI/system/components/justep/dataTables/dataTables" flexibleWidth="true" rowActiveClass="active" class="table table-hover table-striped" xid="dataTables1" data="mainData" showRowNumber="true" onCellRender="dataTables1CellRender" onRowDblClick="dataTables1RowDblClick">
   <columns xid="columns1"><column name="fUseStatusName" xid="column7"></column><column name="fTypeCode" xid="column2"></column>
  <column name="fTypeName" xid="column3"></column>
  <column name="fIsSalary" xid="column4"></column>
  <column name="fIsReducHoliday" xid="column6"></column><column name="fSalaryRule" xid="column5"></column>
  
  
  <column name="fCreatePerName" xid="column8"></column>
  <column name="fCreateTime" xid="column9"></column></columns></div><div component="$UI/system/components/justep/pagerBar/pagerBar" class="x-pagerbar container-fluid"
    xid="pagerBar" data="mainData"> 
    <div class="row" xid="div1"> 
      <div class="col-sm-3" xid="div2"> 
        <div class="x-pagerbar-length" xid="div3"> 
          <label component="$UI/system/components/justep/pagerLimitSelect/pagerLimitSelect"
            class="x-pagerlimitselect" xid="pagerLimitSelect1"> 
            <span xid="span1">显示</span>  
            <select component="$UI/system/components/justep/select/select" class="form-control input-sm"
              xid="select1"> 
              <option value="10" xid="default2">10</option>  
              <option value="20" xid="default3">20</option>  
              <option value="50" xid="default4">50</option>  
              <option value="100" xid="default5">100</option> 
            </select>  
            <span xid="span3">条</span> 
          </label> 
        </div> 
      </div>  
      <div class="col-sm-3" xid="div4"> 
        <div class="x-pagerbar-info" xid="div5">当前显示1-10条，共16条</div> 
      </div>  
      <div class="col-sm-6" xid="div6"> 
        <div class="x-pagerbar-pagination" xid="div7"> 
          <ul class="pagination" component="$UI/system/components/bootstrap/pagination/pagination"
            xid="pagination1"> 
            <li class="prev" xid="li1"> 
              <a href="#" xid="a1"> 
                <span aria-hidden="true" xid="span4">«</span>  
                <span class="sr-only" xid="span5">Previous</span> 
              </a> 
            </li>  
            <li class="next" xid="li2"> 
              <a href="#" xid="a2"> 
                <span aria-hidden="true" xid="span6">»</span>  
                <span class="sr-only" xid="span9">Next</span> 
              </a> 
            </li> 
          </ul> 
        </div> 
      </div> 
    </div> 
  </div> 
</div>