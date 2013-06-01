package zybome
{
   import flash.display.DisplayObjectContainer;
   import aaa.rotmg.config.GoogleAppConfig;
   import cidehov.Juw;


   public class Bohi extends Object
   {
      public function Bohi() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var gimenon:DisplayObjectContainer;

      public var setup:GoogleAppConfig;

      public var analytics:Juw;

      public function execute() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.analytics.init(this.gimenon.stage,this.setup.getGoogleAccountNumber());
         return;
      }
   }

}