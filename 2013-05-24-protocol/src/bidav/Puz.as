package bidav
{
   import flash.events.Event;


   public class Puz extends Event
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Puz(param1:String, param2:Object, param3:Object, param4:Cijukuca, param5:Keho) {
         var _loc6_:* = true;
         var _loc7_:* = false;
         super(param1);
         this.zosaliho=param2;
         this.dypefe=param3;
         this.jevotaba=param4;
         this._factory=param5;
         return;
      }

      public static const baky:String = "mediatorCreate";

      public static const sypinyle:String = "mediatorRemove";

      private var zosaliho:Object;

      public function get mediator() : Object {
         return this.zosaliho;
      }

      private var dypefe:Object;

      public function get view() : Object {
         return this.dypefe;
      }

      private var jevotaba:Cijukuca;

      public function get mapping() : Cijukuca {
         return this.jevotaba;
      }

      private var _factory:Keho;

      public function get factory() : Keho {
         return this._factory;
      }

      override public function clone() : Event {
         return new Puz(type,this.zosaliho,this.dypefe,this.jevotaba,this._factory);
      }
   }

}