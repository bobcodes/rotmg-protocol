package fudep
{
   import flash.utils.Dictionary;
   import flash.utils.getTimer;


   public class Joqi extends Object
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Joqi(param1:uint) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super();
         this.tyramytog=param1;
         return;
      }

      private static var qoco:uint;

      private static var viguli:Dictionary = new Dictionary();

      public static function widenag(param1:Joqi) : uint {
         var _loc5_:* = false;
         var _loc6_:* = true;
         if(viguli[param1.id]==param1)
         {
            return param1.id;
         }
         var _loc2_:* = ++qoco;
         viguli[_loc2_]=param1;
         param1.cubu=getTimer();
         return qoco;
      }

      public static function pik(param1:int) : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc2_:Joqi = null;
         var _loc3_:* = 0;
         for each (_loc2_ in viguli)
         {
            if(!_loc2_.paused)
            {
               _loc3_=param1-_loc2_.cubu;
               if(_loc3_>=_loc2_.tyramytog)
               {
                  _loc2_.cubu=param1;
                  _loc2_.run();
               }
            }
         }
         return;
      }

      public static function qoqev(param1:Joqi) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         GlobalNotificationActionte viguli[[param1.id]];
         param1.onDestroyed();
         return;
      }

      public static function pymi() : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:Joqi = null;
         for each (_loc1_ in viguli)
         {
            _loc1_.destroy();
         }
         viguli=new Dictionary();
         return;
      }

      public var id:uint;

      public var paused:Boolean;

      public var tyramytog:uint;

      public var cubu:int;

      public final function add() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         widenag(this);
         return;
      }

      public final function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         qoqev(this);
         return;
      }

      protected function run() : void {
         return;
      }

      protected function onDestroyed() : void {
         return;
      }
   }

}