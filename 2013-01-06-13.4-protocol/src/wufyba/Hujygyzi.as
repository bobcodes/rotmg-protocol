package wufyba
{
[CLASS1600]   import flash.events.Event;


   public class Hujygyzi extends Event
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Hujygyzi(param1:String, param2:Object, param3:Object, param4:Hifo, param5:Pyluwej) {
         var _loc6_:* = false;
         var _loc7_:* = true;
         super(param1);
         this.vyf=param2;
         this.wygigohi=param3;
         this.lesugabi=param4;
         this._factory=param5;
         return;
      }

      public static const syg:String = "mediatorCreate";

      public static const helebupej:String = "mediatorRemove";

      private var vyf:Object;

      public function get mediator() : Object {
         return this.vyf;
      }

      private var wygigohi:Object;

      public function get view() : Object {
         return this.wygigohi;
      }

      private var lesugabi:Hifo;

      public function get mapping() : Hifo {
         return this.lesugabi;
      }

      private var _factory:Pyluwej;

      public function get factory() : Pyluwej {
         return this._factory;
      }

      override public function clone() : Event {
         return new Hujygyzi(type,this.vyf,this.wygigohi,this.lesugabi,this._factory);
      }
   }
[/CLASS]
}