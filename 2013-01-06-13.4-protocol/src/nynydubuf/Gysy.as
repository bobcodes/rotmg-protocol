package nynydubuf
{
[CLASS625]   import flash.events.Event;


   public class Gysy extends Event
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Gysy(param1:String, param2:Class, param3:String, param4:Wazuqud) {
         var _loc5_:* = true;
         var _loc6_:* = false;
         super(param1);
         this.byde=param2;
         this.wumu=param3;
         this.mapping=param4;
         return;
      }

      public static const pugod:String = "preMappingCreate";

      public static const hyqibiky:String = "postMappingCreate";

      public static const syli:String = "preMappingChange";

      public static const wykyf:String = "postMappingChange";

      public static const vomyjole:String = "postMappingRemove";

      public static const qaze:String = "mappingOverride";

      public var byde:Class;

      public var wumu:String;

      public var mapping:Wazuqud;

      override public function clone() : Event {
         return new Gysy(type,this.byde,this.wumu,this.mapping);
      }
   }
[/CLASS]
}