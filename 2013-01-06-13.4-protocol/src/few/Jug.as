package few
{
[CLASS1591]   import lovika.Sebyp;
   import lovika.Jesuc;
   import flash.utils.Dictionary;
   import sogi.Tuwenaq;
   import lovika.Fabego;
   import sogi.Vydosyb;


   public class Jug extends Object implements Sebyp, Jesuc
   {
      public function Jug(param1:Tuwenaq) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         this.jimiq=param1;
         return;
      }

      private const geqas:Dictionary = new Dictionary();

      private var jimiq:Tuwenaq;

      public function paradi(param1:Class) : Fabego {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return (this.locked(this.geqas[param1]))||(this.lole(param1));
      }

      public function vile(param1:Class) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Vydosyb = this.geqas[param1];
         delete this.geqas[[param1]];
         return;
      }

      public function goniz() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:Vydosyb = null;
         for each (_loc1_ in this.geqas)
         {
            this.jimiq.cove(_loc1_);
            delete this.geqas[[_loc1_.commandClass]];
         }
         return;
      }

      private function lole(param1:Class) : Zadogyby {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Zadogyby = new Zadogyby(param1);
         this.jimiq.malydylo(_loc2_);
         this.geqas[param1]=_loc2_;
         return _loc2_;
      }

      private function locked(param1:Zadogyby) : Zadogyby {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(!param1)
         {
            return null;
         }
         param1.bejony();
         return param1;
      }
   }
[/CLASS]
}