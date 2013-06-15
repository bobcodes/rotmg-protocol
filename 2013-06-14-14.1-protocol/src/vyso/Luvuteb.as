package vyso
{
   import flash.events.Event;


   public class Luvuteb extends Event
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Luvuteb(param1:String, param2:Object, param3:Object, param4:Vapuz, param5:Tokyhoqid) {
         var _loc6_:* = false;
         var _loc7_:* = true;
         super(param1);
         this.tykoqi=param2;
         this.petitynu=param3;
         this.jufir=param4;
         this._factory=param5;
         return;
      }

      public static const zutok:String = "mediatorCreate";

      public static const zagyhyhi:String = "mediatorRemove";

      private var tykoqi:Object;

      public function get mediator() : Object {
         return this.tykoqi;
      }

      private var petitynu:Object;

      public function get view() : Object {
         return this.petitynu;
      }

      private var jufir:Vapuz;

      public function get mapping() : Vapuz {
         return this.jufir;
      }

      private var _factory:Tokyhoqid;

      public function get factory() : Tokyhoqid {
         return this._factory;
      }

      override public function clone() : Event {
         return new Luvuteb(type,this.tykoqi,this.petitynu,this.jufir,this._factory);
      }
   }

}