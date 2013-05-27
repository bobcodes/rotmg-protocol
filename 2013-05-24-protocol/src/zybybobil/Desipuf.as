package zybybobil
{
   import flash.events.Event;
   import com.company.assembleegameclient.appengine.SavedCharacter;


   public class Desipuf extends Event
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Desipuf(param1:SavedCharacter) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super(DELETE_CHARACTER_EVENT);
         this.savedChar_=param1;
         return;
      }

      public static const DELETE_CHARACTER_EVENT:String = "DELETE_CHARACTER_EVENT";

      public var savedChar_:SavedCharacter;
   }

}