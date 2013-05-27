package fozo
{
   import flash.events.EventDispatcher;
   import flash.display.DisplayObjectContainer;
   import __AS3__.vec.Vector;
   import valatom.Nageqyned;
   import flash.display.DisplayObject;


   public class Butyk extends EventDispatcher
   {
      public function Butyk(param1:DisplayObjectContainer) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         this.falaloceb=param1;
         return;
      }

      private var _parent:Butyk;

      public function get parent() : Butyk {
         return this._parent;
      }

      public function set parent(param1:Butyk) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this._parent=param1;
         return;
      }

      private var falaloceb:DisplayObjectContainer;

      public function get container() : DisplayObjectContainer {
         return this.falaloceb;
      }

      public function get pudar() : uint {
         return this._handlers.length;
      }

      private const _handlers:Vector.<Nageqyned> = new Vector.<Nageqyned>();

      public function zuza(param1:Nageqyned) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this._handlers.indexOf(param1)>-1)
         {
            return;
         }
         this._handlers.push(param1);
         return;
      }

      public function tala(param1:Nageqyned) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:int = this._handlers.indexOf(param1);
         if(_loc2_>-1)
         {
            this._handlers.splice(_loc2_,1);
            if(this._handlers.length==0)
            {
               dispatchEvent(new Vyt(Vyt.hil));
            }
         }
         return;
      }

      public function hubumiwek(param1:DisplayObject, param2:Class) : void {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc5_:Nageqyned = null;
         var _loc3_:uint = this._handlers.length;
         var _loc4_:* = 0;
         while(_loc4_<_loc3_)
         {
            _loc5_=this._handlers[_loc4_] as Nageqyned;
            _loc5_.hubumiwek(param1,param2);
            _loc4_++;
         }
         return;
      }
   }

}