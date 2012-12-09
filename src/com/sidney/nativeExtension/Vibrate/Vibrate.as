package com.sidney.nativeExtension.Vibrate
{
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	import flash.external.ExtensionContext;
	
	public class Vibrate extends EventDispatcher
	{
		private static var extContext:ExtensionContext = null;
		
		public function Vibrate(target:IEventDispatcher=null)
		{
			if (!extContext) 
			{
				extContext = ExtensionContext.createExtensionContext("com.sidney.Vibration", "vibrate");
				extContext.call("initMe");
			}
			
			super(target);
		}
		
		public static function get isSupported():Boolean
		{
			var supported:Boolean = false;
			
			supported = extContext.call("isSupported") as Boolean;
			
			return supported;
		}
		
		public function virbate(duration:Number):void
		{
			extContext.call("vibrateMe", duration);
		}
		
		public static function get isSupportSim():Boolean
		{
			var supported:Boolean = false;
			
			supported = extContext.call("isSupportTM") as Boolean;
			
			return supported;
		}
		
		public function getSimID():String
		{
			var simId:String="";
			simId = extContext.call("simid") as String;
			return simId;
		}
		
		public function getIMEI():String
		{
			var IMEI:String="";
			IMEI = extContext.call("imei") as String;
			return IMEI;
		}
	}
}