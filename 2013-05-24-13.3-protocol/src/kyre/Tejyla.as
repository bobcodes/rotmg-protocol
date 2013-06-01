package kyre
{
   import flash.events.Event;


   public class Tejyla extends Event
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Tejyla(param1:String, param2:String, param3:int=-1) {
         var _loc4_:* = true;
         var _loc5_:* = false;
         super(param1,true);
         this.name_=param2;
         this.nefecuqo=param3;
         return;
      }

      public static const SET_RANK:String = "SET_RANK";

      public static const REMOVE_MEMBER:String = "REMOVE_MEMBER";

      public var name_:String;

      public var nefecuqo:int;
   }

}