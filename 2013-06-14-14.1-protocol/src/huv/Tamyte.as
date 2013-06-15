package huv
{
   import flash.events.Event;


   public class Tamyte extends Event
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Tamyte(param1:Boolean, param2:String, param3:Object) {
         var _loc4_:* = true;
         var _loc5_:* = false;
         super(bobyledu);
         this.success_=param1;
         this.hosel=param2;
         this.vuli=param3;
         return;
      }

      public static const bobyledu:String = "GUILDRESULTEVENT";

      public var success_:Boolean;

      public var hosel:String;

      public var vuli:Object;
   }

}