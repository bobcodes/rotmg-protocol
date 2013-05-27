package kubos
{
   import wevozyze.Mysotekan;
   import kyco.Nun;
   import gag.Bysyg;


   public class Tovogige extends Object implements Mysotekan
   {
      public function Tovogige() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var cemohoqal:Nun;

      public var dilyqa:Class;

      public var priority:int;

      public function veledevu() : int {
         return this.priority;
      }

      public function make() : Bysyg {
         return this.cemohoqal.getInstance(this.dilyqa);
      }
   }

}