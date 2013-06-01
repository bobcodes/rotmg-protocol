package lafol
{
[CLASS978]   import zun.Nizulazu;
   import pogefeqeh.Wahovy;
   import zun.Zagidowor;


   public class MessageCenterMapping extends Object implements Nizulazu
   {
      public function MessageCenterMapping() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.handler=this.vopep;
         super();
         return;
      }

      private const vopep:NullHandlerProxy = new NullHandlerProxy();

      private var id:int;

      private var viqelo:Wahovy;

      private var mag:Class;

      private var zeciryci:int = 1;

      private var handler:Zagidowor;

      public function setID(param1:int) : Nizulazu {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.id=param1;
         return this;
      }

      public function setInjector(param1:Wahovy) : MessageCenterMapping {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.viqelo=param1;
         return this;
      }

      public function kiho(param1:Class) : Nizulazu {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.mag=param1;
         return this;
      }

      public function kimy(param1:Class) : Nizulazu {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.handler=new Livo().setType(param1).setInjector(this.viqelo);
         return this;
      }

      public function mawomohuv(param1:Function) : Nizulazu {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.handler=new Vojyfozu().setMethod(param1);
         return this;
      }

      public function dohijoky(param1:int) : Nizulazu {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.zeciryci=param1;
         return this;
      }

      public function caq() : Pope {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Pope = new Pope(this.id,this.mag,this.handler.getMethod());
         _loc1_.kuvodot(this.zeciryci);
         return _loc1_;
      }
   }
[/CLASS]
}[CLASS979]   import zun.Zagidowor;


   class NullHandlerProxy extends Object implements Zagidowor
   {
      function NullHandlerProxy() {
         super();
         return;
      }

      public function getMethod() : Function {
         return null;
      }
   }
[/CLASS]