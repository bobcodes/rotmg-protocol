package boryb
{
   import qov.Kalefu;
   import flash.display.DisplayObjectContainer;
   import vuvanadov.Lazi;
   import komawowag.Becepog;
   import flash.display.LoaderInfo;
   import flash.events.IEventDispatcher;
   import flash.events.ErrorEvent;


   public class Fihyvy extends Kalefu
   {
      public function Fihyvy() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private const qunejawuk:String = "uncaughtErrorEvents";

      private const tewogony:String = "uncaughtError";

      public var gimenon:DisplayObjectContainer;

      public var error:Lazi;

      public var qiqely:Becepog;

      private var loaderInfo:LoaderInfo;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.loaderInfo=this.gimenon.loaderInfo;
         if(this.zinavyjun())
         {
            this.zenumi();
         }
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.zinavyjun())
         {
            this.zubytyhar();
         }
         return;
      }

      private function zinavyjun() : Boolean {
         return this.loaderInfo.hasOwnProperty(this.qunejawuk);
      }

      private function zenumi() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:IEventDispatcher = IEventDispatcher(this.loaderInfo[this.qunejawuk]);
         _loc1_.addEventListener(this.tewogony,this.kelemacos);
         return;
      }

      private function zubytyhar() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:IEventDispatcher = IEventDispatcher(this.loaderInfo[this.qunejawuk]);
         _loc1_.removeEventListener(this.tewogony,this.kelemacos);
         return;
      }

      private function kelemacos(param1:ErrorEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.error.dispatch(param1);
         return;
      }
   }

}