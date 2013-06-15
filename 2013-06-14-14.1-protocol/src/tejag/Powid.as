package tejag
{
   import lepuhuf.Nopoqu;
   import dyca.Mes;
   import gycu.Cyqe;
   import mukyrosu.Qanyduk;
   import gycu.Levoje;


   public class Powid extends Object implements Nopoqu
   {
      public function Powid() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var difas:Mes;

      public var joj:Class;

      public var priority:int;

      public function dyjacyp() : int {
         return this.priority;
      }

      public function make() : Cyqe {
         var _loc1_:Qanyduk = this.difas.getInstance(this.joj);
         return new Levoje(_loc1_);
      }
   }

}