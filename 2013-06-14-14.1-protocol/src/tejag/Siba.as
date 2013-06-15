package tejag
{
   import lepuhuf.Nopoqu;
   import dyca.Mes;
   import gycu.Cyqe;


   public class Siba extends Object implements Nopoqu
   {
      public function Siba() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var difas:Mes;

      public var tytuwa:Class;

      public var priority:int;

      public function dyjacyp() : int {
         return this.priority;
      }

      public function make() : Cyqe {
         return this.difas.getInstance(this.tytuwa);
      }
   }

}