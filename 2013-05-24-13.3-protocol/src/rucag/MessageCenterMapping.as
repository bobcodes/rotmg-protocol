package rucag
{
   import jypuq.Butod;
   import kyco.Nun;
   import jypuq.Viqagun;


   public class MessageCenterMapping extends Object implements Butod
   {
      public function MessageCenterMapping() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.handler=this.jucypebi;
         super();
         return;
      }

      private const jucypebi:NullHandlerProxy = new NullHandlerProxy();

      private var id:int;

      private var cemohoqal:Nun;

      private var nyzomi:Class;

      private var fanupe:int = 1;

      private var handler:Viqagun;

      public function setID(param1:int) : Butod {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.id=param1;
         return this;
      }

      public function setInjector(param1:Nun) : MessageCenterMapping {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.cemohoqal=param1;
         return this;
      }

      public function rafakone(param1:Class) : Butod {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.nyzomi=param1;
         return this;
      }

      public function hitizy(param1:Class) : Butod {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.handler=new Rufywac().setType(param1).setInjector(this.cemohoqal);
         return this;
      }

      public function puqaloryf(param1:Function) : Butod {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.handler=new Gup().setMethod(param1);
         return this;
      }

      public function roquji(param1:int) : Butod {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.fanupe=param1;
         return this;
      }

      public function luv() : Vavoh {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Vavoh = new Vavoh(this.id,this.nyzomi,this.handler.getMethod());
         _loc1_.vazame(this.fanupe);
         return _loc1_;
      }
   }

}   import jypuq.Viqagun;


   class NullHandlerProxy extends Object implements Viqagun
   {
      function NullHandlerProxy() {
         super();
         return;
      }

      public function getMethod() : Function {
         return null;
      }
   }
