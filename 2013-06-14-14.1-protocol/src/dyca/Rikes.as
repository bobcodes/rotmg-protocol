package dyca
{
   import flash.events.Event;


   public class Rikes extends Event
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Rikes(param1:String, param2:Object, param3:Class) {
         var _loc4_:* = true;
         var _loc5_:* = false;
         super(param1);
         this.wisunoc=param2;
         this.tytan=param3;
         return;
      }

      public static const ziqemi:String = "postInstantiate";

      public static const bofoga:String = "preConstruct";

      public static const jararemo:String = "postConstruct";

      public var wisunoc;

      public var tytan:Class;

      override public function clone() : Event {
         return new Rikes(type,this.wisunoc,this.tytan);
      }
   }

}