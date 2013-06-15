package pejycaj
{
   import flash.display.Sprite;
   import mukyrosu.Qanyduk;
   import bemav.Sigul;
   import hivysif.Liwyny;
   import sojakil.Tojytijib;
   import bemav.Telir;
   import flash.events.MouseEvent;
   import jediwip.Kybidu;
   import komi.Vibemod;
   import com.company.assembleegameclient.util.Currency;
   import flash.filters.DropShadowFilter;


   public class ContinueOrQuitDialog extends Sprite
   {
      public function ContinueOrQuitDialog(param1:int) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super();
         this.cost=param1;
         this.continueButton.setPrice(param1,Currency.win);
         return;
      }

      public const quit:Qanyduk = new Qanyduk();

      public const gosi:Qanyduk = new Qanyduk(int);

      private const WIDTH:int = 350;

      private const HEIGHT:int = 150;

      private var cost:int;

      private const background:Sigul = this.wutas();

      private const title:Liwyny = this.haq();

      private const quitSubtitle:Liwyny = this.hylaly();

      private const romu:Tojytijib = this.jow();

      private const continueButton:Telir = this.soza();

      private const cageja:Liwyny = this.hylaly();

      public function init(param1:int, param2:int) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.kyri();
         this.continueButton.setEnabled(this.cost<=param2);
         this.romu.addEventListener(MouseEvent.CLICK,this.zejak);
         if(this.cost<=param2)
         {
            this.continueButton.addEventListener(MouseEvent.CLICK,this.pubogydo);
         }
         this.quitSubtitle.setStringBuilder(new Kybidu().setParams(Vibemod.kizi));
         this.cageja.setStringBuilder(new Kybidu().setParams(Vibemod.ramabi,{waveNumber:param1.toString()}));
         this.align();
         this.qekicobe();
         this.weziqot();
         return;
      }

      public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.romu.removeEventListener(MouseEvent.CLICK,this.zejak);
         this.continueButton.removeEventListener(MouseEvent.CLICK,this.pubogydo);
         return;
      }

      private function zejak(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.quit.dispatch();
         return;
      }

      private function pubogydo(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.gosi.dispatch(Currency.win);
         return;
      }

      private function align() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.quitSubtitle.x=70-this.quitSubtitle.width/2;
         this.quitSubtitle.y=85;
         this.romu.x=70-this.romu.width/2;
         this.romu.y=110;
         this.cageja.x=105-this.cageja.width/2+140;
         this.cageja.y=85;
         this.continueButton.x=105-this.continueButton.width/2+140;
         this.continueButton.y=110;
         return;
      }

      private function kyri() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         x=(stage.stageWidth-this.WIDTH)*0.5;
         y=(stage.stageHeight-this.HEIGHT)*0.5;
         return;
      }

      private function wutas() : Sigul {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Sigul = new Sigul();
         _loc1_.draw(this.WIDTH,this.HEIGHT);
         addChild(_loc1_);
         return _loc1_;
      }

      private function haq() : Liwyny {
         var [OFS2]_loc2_:* = [/OFS]true;
         var [OFS3]_loc3_:* = [/OFS]false;
         var [OFS16]_loc1_:Liwyny = [/OFS][OFS9]new [/OFS][OFS9]Liwyny[/OFS][OFS9]([/OFS][OFS9])[/OFS];
         [OFS17]_loc1_[/OFS].[OFS20]setSize[/OFS][OFS20]([/OFS][OFS18]20[/OFS][OFS20])[/OFS].[OFS24]setBold[/OFS][OFS24]([/OFS]true[OFS24])[/OFS].[OFS29]setColor[/OFS][OFS29]([/OFS][OFS27]11776947[/OFS][OFS29])[/OFS];
         _loc1_.setStringBuilder([OFS35]new [/OFS][OFS35]Kybidu[/OFS][OFS35]([/OFS][OFS35])[/OFS].[OFS43]setParams[/OFS][OFS43]([/OFS][OFS38]Vibemod[/OFS].[OFS40]sywym[/OFS]));
         _loc1_.filters=[new DropShadowFilter(0,0,0,1,8,8)];
         _loc1_.x=(this.WIDTH-_loc1_.width)*0.5;
         _loc1_.y=25;
         addChild(_loc1_);
         return _loc1_;
      }

      private function qekicobe() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.background.graphics.lineStyle();
         this.background.graphics.beginFill(6710886,1);
         this.background.graphics.drawRect(1,70,this.background.width-2,2);
         this.background.graphics.endFill();
         return;
      }

      private function weziqot() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.background.graphics.lineStyle();
         this.background.graphics.beginFill(6710886,1);
         this.background.graphics.drawRect(140,70,2,this.HEIGHT-66);
         this.background.graphics.endFill();
         return;
      }

      private function jow() : Tojytijib {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Tojytijib = new Tojytijib(15,Vibemod.pyf);
         addChild(_loc1_);
         return _loc1_;
      }

      private function soza() : Telir {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Telir = new Telir("",15,this.cost,Currency.win);
         _loc1_.zesi.addOnce(this.align);
         addChild(_loc1_);
         return _loc1_;
      }

      private function hylaly() : Liwyny {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Liwyny = new Liwyny();
         _loc1_.setSize(15).setColor(16777215).setBold(true);
         _loc1_.filters=[new DropShadowFilter(0,0,0,1,8,8)];
         addChild(_loc1_);
         return _loc1_;
      }
   }

}