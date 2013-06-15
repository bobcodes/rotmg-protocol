package zeqituwu
{
   import teticurym.Sewopacyn;
   import flash.utils.Dictionary;
   import dyca.Mes;
   import qypajun.Gahufuz;
   import fol.Qywokida;
   import qypajun.Byjytydon;
   import fol.Fec;


   public class Lupety extends Object implements Sewopacyn
   {
      public function Lupety(param1:Mes, param2:Gahufuz) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super();
         this.vybility=param1;
         this.vetyneron=param2;
         return;
      }

      private const dod:Dictionary = new Dictionary();

      private var vybility:Mes;

      private var vetyneron:Gahufuz;

      public function map(param1:Class, param2:Boolean=false) : Qywokida {
         var _loc3_:Byjytydon = this.dod[param1]=(this.dod[param1])||(this.mufitucam(param1,param2));
         return this.vetyneron.map(_loc3_);
      }

      public function ricelira(param1:Class) : Fec {
         return this.vetyneron.ricelira(this.bujiqebi(param1));
      }

      private function mufitucam(param1:Class, param2:Boolean=false) : Byjytydon {
         return new Jyfepykuh(this.vybility,param1,param2);
      }

      private function bujiqebi(param1:Class) : Byjytydon {
         return this.dod[param1];
      }
   }

}