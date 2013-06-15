package zutudytod
{
   import tytojonib.Kyjefe;
   import hilonec.Tuwo;
   import dicyl.Mukyhokot;
   import pumoc.Juc;
   import aaa.RotmgParameters.RotmgParameters;


   public class Fyfu extends Kyjefe
   {
      public function Fyfu() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:Tuwo;

      private var daju:Mukyhokot;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.mahibehif.add(this.quzyhyt);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.mahibehif.remove(this.quzyhyt);
         return;
      }

      private function quzyhyt() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.daju.dispatch(Juc.make(RotmgParameters.kokapo,"No players are eligible for teleporting"));
         return;
      }
   }

}