package jybazigiq
{
   import qov.Kalefu;
   import nyvubeze.Favequtu;
   import zubamyki.Sywyvu;
   import pepyca.Depagy;
   import aaa.rotmg.config.UserConfig;


   public class Ryguvigaj extends Kalefu
   {
      public function Ryguvigaj() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:Favequtu;

      private var fyve:Sywyvu;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.qatiqepuk.add(this.bifyzo);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.qatiqepuk.remove(this.bifyzo);
         return;
      }

      private function bifyzo() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.fyve.dispatch(Depagy.make(UserConfig.gez,"No players are eligible for teleporting"));
         return;
      }
   }

}