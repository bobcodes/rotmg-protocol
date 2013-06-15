package gunyketa
{
   import flash.events.Event;


   public class Nulacuge extends Event
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Nulacuge(param1:String, param2:Class, param3:String, param4:Dice) {
         var _loc5_:* = true;
         var _loc6_:* = false;
         super(param1);
         this.tehobomu=param2;
         this.zotogom=param3;
         this.mapping=param4;
         return;
      }

      public static const wenis:String = "preMappingCreate";

      public static const bigyqo:String = "postMappingCreate";

      public static const funime:String = "preMappingChange";

      public static const todu:String = "postMappingChange";

      public static const jijek:String = "postMappingRemove";

      public static const bujuzymo:String = "mappingOverride";

      public var tehobomu:Class;

      public var zotogom:String;

      public var mapping:Dice;

      override public function clone() : Event {
         return new Nulacuge(type,this.tehobomu,this.zotogom,this.mapping);
      }
   }

}