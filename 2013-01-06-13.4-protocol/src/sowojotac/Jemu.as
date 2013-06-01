package sowojotac
{
[CLASS1680]   import flash.display.DisplayObject;
   import tinava.Dab;
   import flash.events.Event;


   public class Jemu extends Object
   {
      public function Jemu(param1:DisplayObject) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super();
         this.target=param1;
         param1.addEventListener(Event.ADDED_TO_STAGE,this.zusavuja);
         return;
      }

      private var target:DisplayObject;

      private var tena:Dab;

      private var dypu:Dab;

      private function zusavuja(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.target.removeEventListener(Event.ADDED_TO_STAGE,this.zusavuja);
         this.target.addEventListener(Event.REMOVED_FROM_STAGE,this.qekiqow);
         return;
      }

      private function qekiqow(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.target.addEventListener(Event.ADDED_TO_STAGE,this.zusavuja);
         this.target.removeEventListener(Event.REMOVED_FROM_STAGE,this.qekiqow);
         return;
      }

      public function get metazyrav() : Dab {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return this.tena=(this.tena)||(new Dab());
      }

      public function get lelym() : Dab {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return this.dypu=(this.dypu)||(new Dab());
      }
   }
[/CLASS]
}