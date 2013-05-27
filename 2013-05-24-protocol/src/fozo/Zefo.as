package fozo
{
   import flash.events.Event;
   import flash.display.DisplayObject;


   public class Zefo extends Event
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Zefo(param1:String, param2:DisplayObject=null) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super(param1,true,true);
         this.dypefe=param2;
         return;
      }

      public static const tyrotoby:String = "configureView";

      private var dypefe:DisplayObject;

      public function get view() : DisplayObject {
         return this.dypefe;
      }

      override public function clone() : Event {
         return new Zefo(type,this.dypefe);
      }
   }

}