package wetygyt
{
   import komawowag.Kaquhen;
   import flash.events.IEventDispatcher;
   import komawowag.Net;
   import jebaraqeq.Fivyjysej;
   import flash.events.EventDispatcher;


   public class Nefa extends Object implements Kaquhen
   {
      public function Nefa(param1:IEventDispatcher=null) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super();
         this._eventDispatcher=(param1)||(new EventDispatcher());
         return;
      }

      private const rafegimak:String = Fivyjysej.create(Nefa);

      private var _eventDispatcher:IEventDispatcher;

      public function extend(param1:Net) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         param1.cemohoqal.map(IEventDispatcher).cufypy(this._eventDispatcher);
         return;
      }

      public function toString() : String {
         return this.rafegimak;
      }
   }

}