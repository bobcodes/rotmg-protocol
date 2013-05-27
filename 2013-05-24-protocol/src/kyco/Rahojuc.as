package kyco
{
   import flash.events.Event;


   public class Rahojuc extends Event
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Rahojuc(param1:String, param2:Object, param3:Class) {
         var _loc4_:* = false;
         var _loc5_:* = true;
         super(param1);
         this.worunyjub=param2;
         this.kymaneqaw=param3;
         return;
      }

      public static const jinugac:String = "postInstantiate";

      public static const robav:String = "preConstruct";

      public static const vykafuja:String = "postConstruct";

      public var worunyjub;

      public var kymaneqaw:Class;

      override public function clone() : Event {
         return new Rahojuc(type,this.worunyjub,this.kymaneqaw);
      }
   }

}