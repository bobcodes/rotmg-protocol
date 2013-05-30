package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	
	/**
	 * ...
	 * @author j
	 */
	public class Main extends Sprite 
	{
		private var _main : WebMain;
		
		public function Main():void 
		{
			_main = new WebMain();
		}
		
		private function init(e:Event = null):void 
		{
			_main.onAddedToStage(e);
		}
		
	}
	
}