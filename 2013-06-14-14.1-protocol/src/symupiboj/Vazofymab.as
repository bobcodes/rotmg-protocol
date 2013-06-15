package symupiboj
{
   import tytojonib.Kyjefe;
   import flash.display.DisplayObjectContainer;
   import gimecak.Podopyr;
   import hunavefeg.Depyrew;
   import flash.display.LoaderInfo;
   import flash.events.IEventDispatcher;
   import flash.events.ErrorEvent;


   public class Vazofymab extends Kyjefe
   {
      public function Vazofymab() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private const figysasut:String = "uncaughtErrorEvents";

      private const jijupywyn:String = "uncaughtError";

      public var jumizijuh:DisplayObjectContainer;

      public var error:Podopyr;

      public var con:Depyrew;

      private var loaderInfo:LoaderInfo;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.loaderInfo=this.jumizijuh.loaderInfo;
         if(this.kukurojum())
         {
            this.qid();
         }
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.kukurojum())
         {
            this.wezyr();
         }
         return;
      }

      private function kukurojum() : Boolean {
         return this.loaderInfo.hasOwnProperty(this.figysasut);
      }

      private function qid() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:IEventDispatcher = IEventDispatcher(this.loaderInfo[this.figysasut]);
         _loc1_.addEventListener(this.jijupywyn,this.canerih);
         return;
      }

      private function wezyr() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:IEventDispatcher = IEventDispatcher(this.loaderInfo[this.figysasut]);
         _loc1_.removeEventListener(this.jijupywyn,this.canerih);
         return;
      }

      private function canerih(param1:ErrorEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.error.dispatch(param1);
         return;
      }
   }

}