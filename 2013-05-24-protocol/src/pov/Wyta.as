package pov
{
   import flash.events.Event;


   public class Wyta extends Event
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Wyta(param1:Boolean, param2:String, param3:Object) {
         var _loc4_:* = false;
         var _loc5_:* = true;
         super(zat);
         this.success_=param1;
         this.sogedowa=param2;
         this.jyjakuqub=param3;
         return;
      }

      public static const zat:String = "GUILDRESULTEVENT";

      public var success_:Boolean;

      public var sogedowa:String;

      public var jyjakuqub:Object;
   }

}