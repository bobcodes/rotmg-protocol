package bokojavidu
{
   import flash.events.Event;


   public class Cejuh extends Event
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Cejuh(param1:String, param2:Class, param3:String, param4:Rimot) {
         var _loc5_:* = true;
         var _loc6_:* = false;
         super(param1);
         this.cyjyqo=param2;
         this.wizepam=param3;
         this.mapping=param4;
         return;
      }

      public static const mepozaz:String = "preMappingCreate";

      public static const wicoqivan:String = "postMappingCreate";

      public static const sidani:String = "preMappingChange";

      public static const kami:String = "postMappingChange";

      public static const vesuhy:String = "postMappingRemove";

      public static const pemyne:String = "mappingOverride";

      public var cyjyqo:Class;

      public var wizepam:String;

      public var mapping:Rimot;

      override public function clone() : Event {
         return new Cejuh(type,this.cyjyqo,this.wizepam,this.mapping);
      }
   }

}