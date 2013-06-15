package dovuz
{
   import zugevygam.Tuda;
   import dyca.Mes;
   import zugevygam.Kekurecur;


   public class MessageCenterMapping extends Object implements Tuda
   {
      public function MessageCenterMapping() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.handler=this.celanuke;
         super();
         return;
      }

      private const celanuke:NullHandlerProxy = new NullHandlerProxy();

      private var id:int;

      private var difas:Mes;

      private var jecipy:Class;

      private var lomyzid:int = 1;

      private var handler:Kekurecur;

      public function setID(param1:int) : Tuda {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.id=param1;
         return this;
      }

      public function setInjector(param1:Mes) : MessageCenterMapping {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.difas=param1;
         return this;
      }

      public function titikokad(param1:Class) : Tuda {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.jecipy=param1;
         return this;
      }

      public function fymafo(param1:Class) : Tuda {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.handler=new Syzycez().setType(param1).setInjector(this.difas);
         return this;
      }

      public function puk(param1:Function) : Tuda {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.handler=new Zasi().setMethod(param1);
         return this;
      }

      public function nuwatyva(param1:int) : Tuda {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.lomyzid=param1;
         return this;
      }

      public function fileh() : Nuty {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Nuty = new Nuty(this.id,this.jecipy,this.handler.getMethod());
         _loc1_.behitonep(this.lomyzid);
         return _loc1_;
      }
   }

}   import zugevygam.Kekurecur;


   class NullHandlerProxy extends Object implements Kekurecur
   {
      function NullHandlerProxy() {
         super();
         return;
      }

      public function getMethod() : Function {
         return null;
      }
   }
