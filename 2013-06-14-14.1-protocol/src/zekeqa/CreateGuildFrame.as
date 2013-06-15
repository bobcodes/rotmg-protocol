package zekeqa
{
   import mukyrosu.Qanyduk;
   import com.company.assembleegameclient.game.GameSprite;
   import flash.events.MouseEvent;
   import huv.Tamyte;
   import komi.Vibemod;


   public class CreateGuildFrame extends Frame
   {
      public function CreateGuildFrame(param1:GameSprite) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super(Vibemod.hybunadik,Vibemod.diqysyk,Vibemod.bujiwato,"/createGuild");
         this.gs_=param1;
         this.name_=new Pedug(Vibemod.bupe,false);
         this.name_.inputText_.restrict="A-Za-z ";
         var _loc2_:* = 20;
         this.name_.inputText_.maxChars=_loc2_;
         gozunigyl(this.name_);
         lajocul(Vibemod.fap,{maxChars:_loc2_});
         lajocul(Vibemod.roruhy);
         lajocul(Vibemod.guluky);
         vuz.addEventListener(MouseEvent.CLICK,this.onCancel);
         nuwido.addEventListener(MouseEvent.CLICK,this.havyb);
         return;
      }

      public const close:Qanyduk = new Qanyduk();

      private var name_:Pedug;

      private var gs_:GameSprite;

      private function onCancel(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.close.dispatch();
         return;
      }

      private function havyb(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.gs_.addEventListener(Tamyte.bobyledu,this.sowu);
         this.gs_.gsc_.createGuild(this.name_.text());
         disable();
         return;
      }

      private function sowu(param1:Tamyte) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.gs_.removeEventListener(Tamyte.bobyledu,this.sowu);
         if(param1.success_)
         {
            this.close.dispatch();
         }
         else
         {
            this.name_.nirin(param1.hosel,param1.vuli);
            kafuwuge();
         }
         return;
      }
   }

}