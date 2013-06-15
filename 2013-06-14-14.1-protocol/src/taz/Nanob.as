package taz
{
   import flash.events.Event;


   public class Nanob extends Event
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Nanob(param1:String) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super(param1);
         return;
      }

      public static const UNDO_COMMAND_EVENT:String = "UNDO_COMMAND_EVENT";

      public static const REDO_COMMAND_EVENT:String = "REDO_COMMAND_EVENT";

      public static const CLEAR_COMMAND_EVENT:String = "CLEAR_COMMAND_EVENT";

      public static const LOAD_COMMAND_EVENT:String = "LOAD_COMMAND_EVENT";

      public static const SAVE_COMMAND_EVENT:String = "SAVE_COMMAND_EVENT";

      public static const TEST_COMMAND_EVENT:String = "TEST_COMMAND_EVENT";
   }

}