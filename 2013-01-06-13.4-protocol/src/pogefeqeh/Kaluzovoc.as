package pogefeqeh
{
[CLASS632]   import flash.events.Event;


   public class Kaluzovoc extends Event
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Kaluzovoc(param1:String, param2:Object, param3:Class) {
         var _loc4_:* = false;
         var _loc5_:* = true;
         super(param1);
         this.toryfuq=param2;
         this.kacyvolas=param3;
         return;
      }

      public static const pyqaz:String = "postInstantiate";

      public static const vib:String = "preConstruct";

      public static const bytyneral:String = "postConstruct";

      public var toryfuq;

      public var kacyvolas:Class;

      override public function clone() : Event {
         return new Kaluzovoc(type,this.toryfuq,this.kacyvolas);
      }
   }
[/CLASS]
}