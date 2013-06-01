package qeqeli
{
[CLASS873]   import flash.utils.Dictionary;
   import flash.utils.getTimer;


   public class Qaqarebyn extends Object
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Qaqarebyn(param1:uint) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         this.zuku=param1;
         return;
      }

      private static var moku:uint;

      private static var ryqulava:Dictionary = new Dictionary();

      public static function lylapi(param1:Qaqarebyn) : uint {
         var _loc5_:* = true;
         var _loc6_:* = false;
         if(ryqulava[param1.id]==param1)
         {
            return param1.id;
         }
         var _loc2_:* = ++moku;
         ryqulava[_loc2_]=param1;
         param1.muw=getTimer();
         return moku;
      }

      public static function weculog(param1:int) : void {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc2_:Qaqarebyn = null;
         var _loc3_:* = 0;
         for each (_loc2_ in ryqulava)
         {
            if(!_loc2_.paused)
            {
               _loc3_=param1-_loc2_.muw;
               if(_loc3_>=_loc2_.zuku)
               {
                  _loc2_.muw=param1;
                  _loc2_.run();
               }
            }
         }
         return;
      }

      public static function jokawido(param1:Qaqarebyn) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         delete ryqulava[[param1.id]];
         param1.onDestroyed();
         return;
      }

      public static function decodyfyv() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:Qaqarebyn = null;
         for each (_loc1_ in ryqulava)
         {
            _loc1_.destroy();
         }
         ryqulava=new Dictionary();
         return;
      }

      public var id:uint;

      public var paused:Boolean;

      public var zuku:uint;

      public var muw:int;

      public final function add() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         lylapi(this);
         return;
      }

      public final function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         jokawido(this);
         return;
      }

      protected function run() : void {
         return;
      }

      protected function onDestroyed() : void {
         return;
      }
   }
[/CLASS]
}