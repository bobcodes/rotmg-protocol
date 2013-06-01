package daloraf
{
[CLASS1070]   import flash.events.Event;


   public class Walafe extends Event
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Walafe(param1:String, param2:Humy) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super(param1,true);
         this.tile=param2;
         return;
      }

      public static const ITEM_MOVE:String = "ITEM_MOVE";

      public static const ITEM_DOUBLE_CLICK:String = "ITEM_DOUBLE_CLICK";

      public static const ITEM_SHIFT_CLICK:String = "ITEM_SHIFT_CLICK";

      public static const ITEM_CLICK:String = "ITEM_CLICK";

      public static const ITEM_HOTKEY_PRESS:String = "ITEM_HOTKEY_PRESS";

      public static const ITEM_CTRL_CLICK:String = "ITEM_CTRL_CLICK";

      public var tile:Humy;
   }
[/CLASS]
}