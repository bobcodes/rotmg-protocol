package nonyna
{
[CLASS506]   import tinava.Dab;
   import com.company.assembleegameclient.game.GameSprite;
   import flash.events.MouseEvent;
   import jodahije.Holipov;
   import haqakel.Kefyfa;


   public class CreateGuildFrame extends Frame
   {
      public function CreateGuildFrame(param1:GameSprite) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super(Kefyfa.kaz,Kefyfa.palysiqu,Kefyfa.vijihany,"/createGuild");
         this.gs_=param1;
         this.name_=new Cyb(Kefyfa.dofi,false);
         this.name_.inputText_.restrict="A-Za-z ";
         var _loc2_:* = 20;
         this.name_.inputText_.maxChars=_loc2_;
         sirutugu(this.name_);
         jow(Kefyfa.pusagafen,{maxChars:_loc2_});
         jow(Kefyfa.jyhyp);
         jow(Kefyfa.lucuz);
         mycip.addEventListener(MouseEvent.CLICK,this.onCancel);
         mibyruji.addEventListener(MouseEvent.CLICK,this.hotag);
         return;
      }

      public const close:Dab = new Dab();

      private var name_:Cyb;

      private var gs_:GameSprite;

      private function onCancel(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.close.dispatch();
         return;
      }

      private function hotag(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.gs_.addEventListener(Holipov.gegucoc,this.wuco);
         this.gs_.gsc_.createGuild(this.name_.text());
         disable();
         return;
      }

      private function wuco(param1:Holipov) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.gs_.removeEventListener(Holipov.gegucoc,this.wuco);
         if(param1.success_)
         {
            this.close.dispatch();
         }
         else
         {
            this.name_.famugujo(param1.nicon,param1.tymor);
            kiwimuj();
         }
         return;
      }
   }
[/CLASS]
}