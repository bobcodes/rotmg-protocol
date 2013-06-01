package bysamewy
{
[CLASS595]   import tysenyzy.Zovisis;
   import flash.display.DisplayObjectContainer;
   import lyribor.Ropu;
   import bikyvym.Voduzak;
   import flash.display.LoaderInfo;
   import flash.events.IEventDispatcher;
   import flash.events.ErrorEvent;


   public class Homyjitad extends Zovisis
   {
      public function Homyjitad() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private const taricyp:String = "uncaughtErrorEvents";

      private const qikujuty:String = "uncaughtError";

      public var tys:DisplayObjectContainer;

      public var error:Ropu;

      public var wop:Voduzak;

      private var loaderInfo:LoaderInfo;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.loaderInfo=this.tys.loaderInfo;
         if(this.videqut())
         {
            this.deq();
         }
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.videqut())
         {
            this.nemej();
         }
         return;
      }

      private function videqut() : Boolean {
         return this.loaderInfo.hasOwnProperty(this.taricyp);
      }

      private function deq() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:IEventDispatcher = IEventDispatcher(this.loaderInfo[this.taricyp]);
         _loc1_.addEventListener(this.qikujuty,this.rufyj);
         return;
      }

      private function nemej() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:IEventDispatcher = IEventDispatcher(this.loaderInfo[this.taricyp]);
         _loc1_.removeEventListener(this.qikujuty,this.rufyj);
         return;
      }

      private function rufyj(param1:ErrorEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.error.dispatch(param1);
         return;
      }
   }
[/CLASS]
}