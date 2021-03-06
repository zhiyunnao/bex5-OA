<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:mobile">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:333px;top:427px;"
    onModelConstructDone="modelModelConstructDone"> 
    <div component="$UI/system/components/justep/data/bizData" xid="dBookApplyM"
      concept="OA_BK_BookApplyM" limit="1" autoNew="false"> 
      <reader xid="default1" action="/OA/book/logic/action/queryBKBookApplyMAction"/>  
      <writer xid="default2" action="/OA/book/logic/action/saveBKBookApplyMAction"/>  
      <creator xid="default3" action="/OA/book/logic/action/createBKBookApplyMAction"/> 
    </div>  
    <div component="$UI/system/components/justep/data/bizData" xid="dBookApplyD"
      concept="OA_BK_BookApplyD" autoLoad="true" limit="-1"> 
      <reader xid="default4" action="/OA/book/logic/action/queryBKBookApplyDAction"/>  
      <writer xid="default5" action="/OA/book/logic/action/saveBKBookApplyDAction"/>  
      <creator xid="default6" action="/OA/book/logic/action/createBookApplyDAction"/>  
      <calculateRelation relation="relation0" xid="calculateRelation1"/>  
      <master xid="default18" data="dBookApplyM" relation="fMasterID"/> 
    </div> 
  </div>  
  <div component="$UI/system/components/justep/process/process" xid="process"
    data="dBookApplyM" style="height:24px;width:24px;left:0px;top:200px;" autoStart="true"
    autoSave="true" onBeforeAdvanceQuery="processBeforeAdvanceQuery"/>  
  <div component="$UI/system/components/justep/popMenu/popMenu" class="x-popMenu"
    xid="moreMenu" opacity="0" anchor="moreBtn" direction="left-bottom"> 
    <div class="x-popMenu-overlay" xid="moreMenuOverlay"/>  
    <ul component="$UI/system/components/justep/menu/menu" class="x-menu dropdown-menu x-popMenu-content"
      xid="moreContent"> 
      <li class="x-menu-item" xid="suspendItem"> 
        <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left"
          label="暂停" xid="suspendBtn" onClick="{operation:'process.suspend'}"> 
          <i xid="i9"/>  
          <span xid="span8">暂停</span> 
        </a> 
      </li>  
      <li class="x-menu-item" xid="abortItem"> 
        <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left"
          label="终止" xid="abortBtn" onClick="{operation:'process.abort'}"> 
          <i xid="i10"/>  
          <span xid="span9">终止</span> 
        </a> 
      </li> 
    </ul> 
  </div>  
  <div xid="view"> 
    <div component="$UI/system/components/justep/toolBar/toolBar" class="x-toolbar x-toolbar-spliter form-inline"
      xid="mainBar"> 
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left"
        xid="saveBtn" onClick="{operation:'dBookApplyM.save'}"> 
        <i xid="i1"/>  
        <span xid="span1"/> 
      </a>  
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left"
        xid="advanceBtn" onClick="{operation:'process.advance'}"> 
        <i xid="i2"/>  
        <span xid="span2">流转</span> 
      </a>  
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left"
        xid="chartBtn" onClick="{operation:'process.showChart'}" label="流程图"> 
        <i xid="i11"/>  
        <span xid="span12">流程图</span> 
      </a>  
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left"
        label="流程记录" xid="recordBtn" onClick="{operation:'process.processRecord'}"> 
        <i xid="i12"/>  
        <span xid="span13">流程记录</span> 
      </a>  
      <a component="$UI/system/components/justep/button/button" class="btn btn-link"
        label="更多" xid="moreBtn" onClick="{operation:'moreMenu.show'}"> 
        <i xid="i15"/>  
        <span xid="span15">更多</span> 
      </a> 
    </div>  
    <div xid="content"> 
      <div class="form-horizontal container-fluid" component="$UI/system/components/bootstrap/form/form"
        xid="form"> 
        <div component="$UI/system/components/bootstrap/row/row" class="row"
          xid="default8"> 
          <div class="col col-xs-12 col-sm-6 col-md-6 col-lg-4" xid="col9"> 
            <div component="$UI/system/components/justep/labelEdit/labelEdit"
              class="x-label-edit" xid="labelEdit1"> 
              <label class="x-label" xid="fNOL" style="width:100px;"><![CDATA[申请编号]]></label>  
              <div class="x-edit" xid="div1"> 
                <output component="$UI/system/components/justep/output/output"
                  class="form-control" xid="code" bind-ref="dBookApplyM.ref('fNO')"/> 
              </div> 
            </div> 
          </div>  
          <div class="col col-xs-12 col-sm-6 col-md-6 col-lg-4" xid="col10"> 
            <div component="$UI/system/components/justep/labelEdit/labelEdit"
              class="x-label-edit" xid="labelEdit2"> 
              <label class="x-label" xid="orderDateL" style="width:100px;"><![CDATA[申请日期]]></label>  
              <div class="x-edit" xid="div2"> 
                <input component="$UI/system/components/justep/input/input" class="form-control"
                  xid="orderDate" bind-ref="dBookApplyM.ref('fApplyDate')" format="yyyy-MM-dd"/> 
              </div> 
            </div> 
          </div>  
          <div class="col col-xs-12 col-sm-6 col-md-6 col-lg-4" xid="col11"> 
            <div component="$UI/system/components/justep/labelEdit/labelEdit"
              class="x-label-edit" xid="labelEdit3"> 
              <label class="x-label" xid="fApplyDeptNameL" style="width:100px;"><![CDATA[申请部门]]></label>  
              <div class="x-edit" xid="div3"> 
                <output component="$UI/system/components/justep/output/output"
                  class="form-control" bind-ref="dBookApplyM.ref('fApplyDeptName')"
                  xid="fApplyDeptName"/> 
              </div> 
            </div> 
          </div> 
        <div class="col col-xs-12 col-sm-6 col-md-6 col-lg-4" xid="col12"> 
            <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit" xid="labelEdit4"> 
              <label class="x-label" xid="ApplyPsnNameL" style="width:100px;"><![CDATA[申请人]]></label>  
              <div class="x-edit" xid="div1"> 
                <output component="$UI/system/components/justep/output/output" class="form-control" bind-ref="dBookApplyM.ref('fApplyPsnName')" xid="ApplyPsnName" />
              </div> 
            </div> 
          </div><div class="col col-xs-12 col-sm-6 col-md-6 col-lg-4" xid="col13"> 
            <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit" xid="labelEdit5"> 
              <label class="x-label" xid="IntendStartDateL" style="width:100px;"><![CDATA[预计借阅时间]]></label>  
              <div class="x-edit" xid="div2"> 
                <input component="$UI/system/components/justep/input/input" class="form-control" bind-ref="dBookApplyM.ref('fIntendStartDate')" xid="IntendStartDate" />
              </div> 
            </div> 
          </div><div class="col col-xs-12 col-sm-6 col-md-6 col-lg-4" xid="col14"> 
            <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit" xid="labelEdit6"> 
              <label class="x-label" xid="IntendEndDateL" style="width:100px;"><![CDATA[预计归还时间]]></label>  
              <div class="x-edit" xid="div3"> 
                <input component="$UI/system/components/justep/input/input" class="form-control" bind-ref="dBookApplyM.ref('fIntendEndDate')" xid="IntendEndDate" />
              </div> 
            </div> 
          </div><div class="col col-xs-12 col-sm-12 col-md-12 col-lg-12" xid="col12"> 
            <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit" xid="labelEdit4"> 
              <label class="x-label" xid="fRemarkL" style="width:100px;"><![CDATA[备注]]></label>  
              <div class="x-edit" xid="div1"> 
                <input component="$UI/system/components/justep/input/input" class="form-control" bind-ref="dBookApplyM.ref('fRemark')" xid="fRemark" style="height:85px;" /> 
              </div> 
            </div> 
          </div></div>  
        <div component="$UI/system/components/justep/controlGroup/controlGroup"
          class="x-control-group" title="图书信息" xid="productGroup" collapsible="true"> 
          <div class="x-control-group-title" xid="productTitle"> 
            <span xid="span7">title</span> 
          </div>  
          <div xid="productContent"> 
            <div component="$UI/system/components/justep/toolBar/toolBar" class="x-toolbar x-toolbar-spliter form-inline"
              xid="detailBar"> 
              <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left"
                xid="addBookBtn" icon="icon-plus" label="选择图书" onClick="addBookBtnClick"> 
                <i xid="i6" class="icon-plus"/>  
                <span xid="span10">选择图书</span> 
              </a>  
              <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left"
                xid="deleteBtn" onClick="{operation:'dBookApplyD.delete'}"> 
                <i xid="i7"/>  
                <span xid="span11">删除</span> 
              </a> 
            </div> 
          </div>  
          <div component="$UI/system/components/justep/grid/grid" hiddenCaptionbar="true"
            altRows="true" class="x-grid-no-bordered" xid="detailgrid" data="dBookApplyD"
            showRowNumber="true"> 
            <columns xid="columns1"> 
              <column width="80" name="fBooksNumber" xid="column1"/>  
              <column width="150" name="fBooksName" xid="column2"/>  
              <column width="80" name="fBooksTypeName" xid="column3"/>  
              <column width="100" name="fAuthor" xid="column5"/>  
              <column width="150" name="fBookConcern" xid="column4"/>  
              <column width="80" name="fPrice" xid="column8" align="right"/>  
              <column width="80" name="fPageNum" xid="column6" align="right"/>  
              <column width="200" name="fRemark" xid="column7" editable="true"> 
                <editor xid="editor1"> 
                  <input component="$UI/system/components/justep/input/input"
                    class="form-control input-sm" xid="input1" bind-ref="ref('fRemark')"/> 
                </editor> 
              </column> 
            </columns> 
          </div> 
        </div> 
      </div> 
    </div> 
  </div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="bookDialog"
    style="left:107px;top:134px;" src="$UI/OA/book/process/dialog/selectBookInfoDialog/selectBookInfoDialog.w"
    title="选择图书" status="normal" onReceive="bookDialogReceive" forceRefreshOnOpen="true"/> 
</div>
