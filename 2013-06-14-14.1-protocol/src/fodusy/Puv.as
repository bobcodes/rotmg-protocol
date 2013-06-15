package fodusy
{
   import cizagamym.Boquzojul;
   import ranu.Fiwot;
   import lemugo.Wokycuku;
   import poho.Kyhy;
   import fysy.Rehijuh;
   import pitahelel.ReskinCharacterView;
   import __AS3__.vec.Vector;
   import flash.display.DisplayObject;
   import poho.Wumyziju;


   public class Puv extends Object
   {
      public function Puv() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var ridecy:Boquzojul;

      public var lypadodec:Fiwot;

      public var player:Wokycuku;

      public var model:Kyhy;

      public var factory:Rehijuh;

      public function execute() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.lypadodec.dispatch();
         this.ridecy.dispatch(this.lewodo());
         return;
      }

      private function lewodo() : ReskinCharacterView {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:ReskinCharacterView = new ReskinCharacterView();
         _loc1_.padijuby(this.hunekycu());
         _loc1_.x=(800-_loc1_.width)*0.5;
         _loc1_.y=(600-_loc1_.mym)*0.5;
         return _loc1_;
      }

      private function hunekycu() : Vector.<DisplayObject> {
         var _loc1_:Wumyziju = this.hilavuw();
         return this.factory.make(_loc1_);
      }

      private function hilavuw() : Wumyziju {
         return this.model.gype().sybiwu;
      }
   }

}