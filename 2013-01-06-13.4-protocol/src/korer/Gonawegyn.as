package korer
{
[CLASS1584]   import flash.events.EventDispatcher;
   import flash.display.DisplayObjectContainer;
   import __AS3__.vec.Vector;
   import suzu.Ved;
   import flash.display.DisplayObject;


   public class Gonawegyn extends EventDispatcher
   {
      public function Gonawegyn(param1:DisplayObjectContainer) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         this.vyl=param1;
         return;
      }

      private var _parent:Gonawegyn;

      public function get parent() : Gonawegyn {
         return this._parent;
      }

      public function set parent(param1:Gonawegyn) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this._parent=param1;
         return;
      }

      private var vyl:DisplayObjectContainer;

      public function get container() : DisplayObjectContainer {
         return this.vyl;
      }

      public function get tow() : uint {
         return this._handlers.length;
      }

      private const _handlers:Vector.<Ved> = new Vector.<Ved>();

      public function moson(param1:Ved) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this._handlers.indexOf(param1)>-1)
         {
            return;
         }
         this._handlers.push(param1);
         return;
      }

      public function wary(param1:Ved) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:int = this._handlers.indexOf(param1);
         if(_loc2_>-1)
         {
            this._handlers.splice(_loc2_,1);
            if(this._handlers.length==0)
            {
               dispatchEvent(new Jikusoh(Jikusoh.negag));
            }
         }
         return;
      }

      public function tadylugi(param1:DisplayObject, param2:Class) : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc5_:Ved = null;
         var _loc3_:uint = this._handlers.length;
         var _loc4_:* = 0;
         while(_loc4_<_loc3_)
         {
            _loc5_=this._handlers[_loc4_] as Ved;
            _loc5_.tadylugi(param1,param2);
            _loc4_++;
         }
         return;
      }
   }
[/CLASS]
}