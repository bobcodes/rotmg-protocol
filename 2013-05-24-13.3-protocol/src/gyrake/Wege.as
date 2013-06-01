package gyrake
{
   import aaa.rotmg.config.UserConfig;
   import flash.events.Event;
   import __AS3__.vec.Vector;
   import nec.Zirewe;


   public class Wege extends Games
   {
      public function Wege(param1:String, param2:Vector.<Zirewe>, param3:Array, param4:String, param5:String, param6:Function) {
         var _loc7_:* = true;
         var _loc8_:* = false;
         super(param1,param4,param5);
         this.callback_=param6;
         this.rilozaga=new Zopywetyf(param2,param3,UserConfig.data_[ruhunydyw]);
         this.rilozaga.addEventListener(Event.CHANGE,this.kosu);
         addChild(this.rilozaga);
         return;
      }

      private var callback_:Function;

      private var rilozaga:Zopywetyf;

      override public function refresh() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.rilozaga.setValue(UserConfig.data_[ruhunydyw]);
         return;
      }

      private function kosu(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         UserConfig.data_[ruhunydyw]=this.rilozaga.value();
         UserConfig.save();
         if(this.callback_!=null)
         {
            this.callback_();
         }
         return;
      }
   }

}