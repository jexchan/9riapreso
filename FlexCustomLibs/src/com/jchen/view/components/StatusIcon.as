package com.jchen.view.components {
	import mx.controls.Image;
	import spark.components.supportClasses.SkinnableComponent;
	
	[SkinState("online")]
	[SkinState("busy")]
	[SkinState("away")]
	[SkinState("offline")]
	public class StatusIcon extends SkinnableComponent {
		private var _status:String;
		private var statusChanged:Boolean = false;
		
		public function StatusIcon() {
			super();
		}
		
		[Bindable]
		public var nickName:String;
		
		
		[SkinPart(required="true")]
		public var icon:Image;
		
		public function get status():String {
			return _status;
		}
		
		public function set status(value:String):void {
			_status = value;
			statusChanged = true;
			invalidateProperties();
		}
		//延迟设定状态改变
		override protected function commitProperties():void {
			super.commitProperties();
			if(statusChanged && icon) {
				statusChanged = false;
				invalidateSkinState();
			}
		}
		//根据设定状态的值改变当前状态
		override protected function getCurrentSkinState():String {
			var returnState:String = "online";
			if(status == "busy") {
				returnState =  "busy";
			}
			if(status == "away") {
				returnState = "away";
			}
			if(status == "offline") {
				returnState = "offline";
			}
			return returnState;
		}
		
	}
}