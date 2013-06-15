package dovuz
{
   import zugevygam.Kekurecur;


   public class Zasi extends Object implements Kekurecur
   {
      public function Zasi() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private var method:Function;

      public function setMethod(param1:Function) : Zasi {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.method=param1;
         return this;
      }

      public function getMethod() : Function {
         return this.method;
      }
   }

}