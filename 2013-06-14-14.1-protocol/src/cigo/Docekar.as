package cigo
{
   import flash.events.EventDispatcher;
   import flash.display.DisplayObjectContainer;
   import __AS3__.vec.Vector;
   import pune.Dyhaqa;
   import flash.display.DisplayObject;


   public class Docekar extends EventDispatcher
   {
      public function Docekar(param1:DisplayObjectContainer) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         this.vylyqilug=param1;
         return;
      }

      private var _parent:Docekar;

      public function get parent() : Docekar {
         return this._parent;
      }

      public function set parent(param1:Docekar) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this._parent=param1;
         return;
      }

      private var vylyqilug:DisplayObjectContainer;

      public function get container() : DisplayObjectContainer {
         return this.vylyqilug;
      }

      public function get niv() : uint {
         return this._handlers.length;
      }

      private const _handlers:Vector.<Dyhaqa> = new Vector.<Dyhaqa>();

      public function tunimemap(param1:Dyhaqa) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this._handlers.indexOf(param1)>-1)
         {
            return;
         }
         this._handlers.push(param1);
         return;
      }

      public function qyg(param1:Dyhaqa) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:int = this._handlers.indexOf(param1);
         if(_loc2_>-1)
         {
            this._handlers.splice(_loc2_,1);
            if(this._handlers.length==0)
            {
               dispatchEvent(new Tyweraqe(Tyweraqe.peceby));
            }
         }
         return;
      }

      public function jihe(param1:DisplayObject, param2:Class) : void {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc5_:Dyhaqa = null;
         var _loc3_:uint = this._handlers.length;
         var _loc4_:* = 0;
         while(_loc4_<_loc3_)
         {
            _loc5_=this._handlers[_loc4_] as Dyhaqa;
            _loc5_.jihe(param1,param2);
            _loc4_++;
         }
         return;
      }
   }

}