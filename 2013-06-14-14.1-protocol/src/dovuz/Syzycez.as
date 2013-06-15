package dovuz
{
   import zugevygam.Kekurecur;
   import dyca.Mes;


   public class Syzycez extends Object implements Kekurecur
   {
      public function Syzycez() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private var difas:Mes;

      private var loridaz:Class;

      private var handler:Object;

      public function setType(param1:Class) : Syzycez {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.loridaz=param1;
         return this;
      }

      public function setInjector(param1:Mes) : Syzycez {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.difas=param1;
         return this;
      }

      public function getMethod() : Function {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return this.handler?this.handler.execute:this.fupanocu();
      }

      private function fupanocu() : Function {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(!this.loridaz)
         {
            return null;
         }
         this.handler=this.difas.getInstance(this.loridaz);
         return this.handler.execute;
      }
   }

}