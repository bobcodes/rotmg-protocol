package nyt
{
   import quqe.Wupeb;
   import wegyluke.Cowymute;
   import zelinoryv.Vib;
   import hotewa.Baqifa;


   public class Fykoheja extends Object
   {
      public function Fykoheja() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var death:Wupeb;

      public var closeDialogs:Cowymute;

      public var model:Vib;

      public var player:Baqifa;

      public var zymuku:Fotuk;

      public var newiq:Dos;

      public var normal:Weryliz;

      public function execute() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.closeDialogs.dispatch();
         if(this.jekoziru())
         {
            this.vifo();
         }
         else
         {
            this.bus();
         }
         return;
      }

      private function jekoziru() : Boolean {
         return this.model.tecefado();
      }

      private function vifo() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.normal.dispatch(this.model.qajyzyn());
         return;
      }

      private function bus() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.model.hybivadi(this.death);
         if(this.death.zuq)
         {
            this.newiq.dispatch(this.death);
         }
         else
         {
            if(!this.player.fybema())
            {
               this.zymuku.dispatch(this.death);
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