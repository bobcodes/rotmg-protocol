package jykolu
{
[CLASS428]   import flash.display.DisplayObjectContainer;
   import tidi.Jewom;


   public class Kodida extends Object
   {
      public function Kodida() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var tys:DisplayObjectContainer;

      public function execute() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Jewom = new Jewom();
         _loc1_.x=4;
         _loc1_.y=4;
         this.tys.addChild(_loc1_);
         return;
      }
   }
[/CLASS]
}