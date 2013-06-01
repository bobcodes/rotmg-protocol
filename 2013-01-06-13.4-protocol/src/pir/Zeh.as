package pir
{
[CLASS391]   import bikyvym.Mive;
   import flash.events.IEventDispatcher;
   import bikyvym.Cedymynet;
   import fomykuq.Sedubali;
   import flash.events.EventDispatcher;


   public class Zeh extends Object implements Mive
   {
      public function Zeh(param1:IEventDispatcher=null) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         this._eventDispatcher=(param1)||(new EventDispatcher());
         return;
      }

      private const pubutahic:String = Sedubali.create(Zeh);

      private var _eventDispatcher:IEventDispatcher;

      public function extend(param1:Cedymynet) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         param1.viqelo.map(IEventDispatcher).zoru(this._eventDispatcher);
         return;
      }

      public function toString() : String {
         return this.pubutahic;
      }
   }
[/CLASS]
}