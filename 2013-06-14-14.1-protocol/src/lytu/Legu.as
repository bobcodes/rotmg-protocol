package lytu
{
   import wipivyv.Memysoh;
   import cizagamym.Lebovas;
   import tygole.Govututa;
   import lemugo.Wokycuku;


   public class Legu extends Object
   {
      public function Legu() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var death:Memysoh;

      public var closeDialogs:Lebovas;

      public var model:Govututa;

      public var player:Wokycuku;

      public var dozuwaj:Hogi;

      public var zeqypavuj:Taboqid;

      public var normal:Woriqucak;

      public function execute() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.closeDialogs.dispatch();
         if(this.wuf())
         {
            this.fyli();
         }
         else
         {
            this.wipylohub();
         }
         return;
      }

      private function wuf() : Boolean {
         return this.model.buhizo();
      }

      private function fyli() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.normal.dispatch(this.model.vocafeq());
         return;
      }

      private function wipylohub() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.model.mafy(this.death);
         if(this.death.nequfiv)
         {
            this.zeqypavuj.dispatch(this.death);
         }
         else
         {
            if(!this.player.qetemiq())
            {
               this.dozuwaj.dispatch(this.death);
            }
            else
            {
               this.normal.dispatch(this.death);
            }
         }
         return;
      }
   }

}