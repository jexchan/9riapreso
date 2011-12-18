package com.jchen.events
{
	import flash.events.Event;
	
	public class CustomEvent extends Event {
		public static const ERROR_MESSAGE_EVENT:String = "errorMessageEvent";
		
		private var _parameter:String;
		/**
		 * 错误消息内容
		 * @return
		 *
		 */
		public function get parameter():String {
			return _parameter;
		}
		
		/**
		 * 构造方法
		 * @param type
		 * @param parameter
		 * @param bubbles
		 * @param cancelable
		 *
		 */
		public function CustomEvent(type:String,parameter:String="", bubbles:Boolean=false, cancelable:Boolean=false) {
			_parameter = parameter;
			super(type, bubbles, cancelable);
		}
		
		/**
		 * 返回CustomEvent的一个拷贝.
		 * @return
		 *
		 */
		override public function clone():Event {
			return new CustomEvent(type,parameter,bubbles,cancelable);
		}
	}
}