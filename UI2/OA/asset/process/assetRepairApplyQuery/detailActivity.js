define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	
	var Model = function(){
		this.callParent();
	};

	Model.prototype.modelLoad = function(event){
		var mainData = this.comp("mainData");
		var data = this.getContext().getRequestParameter("data");
		if (data){
			var filter = "OA_AS_RepairApply='" + data + "'";
			mainData.setFilter("____dataFilter_", filter);
			mainData.refreshData(); 
		}
	};

	Model.prototype.chartBtnClick = function(event){
		var process = this.comp("process");
		process.showChart("/OA/asset/process/assetRepairApply/assetRepairApplyProcess", this.comp("mainData").getCurrentRowID(), null);
	};
	
	Model.prototype.processRecord = function(event){
		var mainData = this.comp("mainData");
		var id = mainData.getRowID();
        var process=this.comp("process");
        process.processRecord(null, null, id);
	};


	return Model;
});