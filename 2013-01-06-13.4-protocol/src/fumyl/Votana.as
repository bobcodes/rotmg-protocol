package fumyl
{
[CLASS98]   import tysenyzy.Zovisis;
   import dylaqezo.Vusun;
   import dutes.Sycanetal;
   import tusidywuq.Nan;
   import qilarag.Gufaw;
   import guvakipe.Nedasefyg;


   public class Votana extends Zovisis
   {
      public function Votana() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:Segodi;

      public var model:Vusun;

      public var cucec:Sycanetal;

      public var play:Nan;

      override public function initialize() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Boolean = this.model.hasAvailableCharSlot();
         this.view.seme(_loc1_);
         if(_loc1_)
         {
            this.view.play.addOnce(this.wazyjak);
         }
         this.view.back.addOnce(this.puwalo);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.back.remove(this.puwalo);
         this.view.play.remove(this.wazyjak);
         return;
      }

      private function puwalo() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.cucec.dispatch(new Gufaw());
         return;
      }

      private function wazyjak() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Nedasefyg = new Nedasefyg();
         _loc1_.buny=true;
         _loc1_.charId=this.model.lazotidiz();
         _loc1_.sufosyz=-1;
         _loc1_.zyhafovyd=true;
         this.play.dispatch(_loc1_);
         return;
      }
   }
[/CLASS]
}