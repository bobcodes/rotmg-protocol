package jehivytu
{
[CLASS153]   import mywyvuryw.Kejubuveh;
   import kirofyny.Tiqimav;
   import dage.Fakibis;
   import dylaqezo.Vusun;


   public class Falezaq extends Object
   {
      public function Falezaq() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var death:Kejubuveh;

      public var closeDialogs:Tiqimav;

      public var model:Fakibis;

      public var player:Vusun;

      public var lepeh:Lavavyjo;

      public var labej:Vuvuv;

      public var normal:Hyfezaf;

      public function execute() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.closeDialogs.dispatch();
         if(this.bykafy())
         {
            this.hud();
         }
         else
         {
            this.notuwyqug();
         }
         return;
      }

      private function bykafy() : Boolean {
         return this.model.wahirupom();
      }

      private function hud() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.normal.dispatch(this.model.gituroq());
         return;
      }

      private function notuwyqug() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.model.vunura(this.death);
         if(this.death.vez)
         {
            this.labej.dispatch(this.death);
         }
         else
         {
            if(!this.player.cypege())
            {
               this.lepeh.dispatch(this.death);
            }
            else
            {
               this.normal.dispatch(this.death);
            }
         }
         return;
      }
   }
[/CLASS]
}