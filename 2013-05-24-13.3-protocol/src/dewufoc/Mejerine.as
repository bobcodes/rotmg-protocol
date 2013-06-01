package dewufoc
{
   import flash.utils.Dictionary;
   import flash.utils.getTimer;


   public class Mejerine extends Object
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Mejerine(param1:uint) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super();
         this.jerub=param1;
         return;
      }

      private static var rigido:uint;

      private static var vukyg:Dictionary = new Dictionary();

      public static function jokipary(param1:Mejerine) : uint {
         var _loc5_:* = false;
         var _loc6_:* = true;
         if(vukyg[param1.id]==param1)
         {
            return param1.id;
         }
         var _loc2_:* = ++rigido;
         vukyg[_loc2_]=param1;
         param1.lubifiq=getTimer();
         return rigido;
      }

      public static function myp(param1:int) : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc2_:Mejerine = null;
         var _loc3_:* = 0;
         for each (_loc2_ in vukyg)
         {
            if(!_loc2_.paused)
            {
               _loc3_=param1-_loc2_.lubifiq;
               if(_loc3_>=_loc2_.jerub)
               {
                  _loc2_.lubifiq=param1;
                  _loc2_.run();
               }
            }
         }
         return;
      }

      public static function honibev(param1:Mejerine) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         delete vukyg[[param1.id]];
         param1.onDestroyed();
         return;
      }

      public static function sini() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:Mejerine = null;
         for each (_loc1_ in vukyg)
         {
            _loc1_.destroy();
         }
         vukyg=new Dictionary();
         return;
      }

      public var id:uint;

      public var paused:Boolean;

      public var jerub:uint;

      public var lubifiq:int;

      public final function add() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         jokipary(this);
         return;
      }

      public final function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         honibev(this);
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