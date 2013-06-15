package fytalis
{
   import mukyrosu.Qanyduk;
   import com.company.assembleegameclient.objects.ArenaPortal;
   import flash.display.Sprite;
   import hivysif.Liwyny;
   import bemav.Telir;
   import hivysif.Guzowoja;
   import flash.events.MouseEvent;
   import com.company.assembleegameclient.util.Currency;
   import flash.text.TextFieldAutoSize;
   import jediwip.Kybidu;
   import komi.Vibemod;
   import flash.filters.DropShadowFilter;
   import com.company.assembleegameclient.game.Pajemiz;
   import com.company.assembleegameclient.objects.Player;


   public class ArenaPortalPanel extends Panel
   {
      public function ArenaPortalPanel(param1:Pajemiz, param2:ArenaPortal) {
         var _loc4_:* = false;
         var _loc5_:* = true;
         this.rywaj=new Sprite();
         this.gip=new Sprite();
         super(param1);
         this.gilyzygag=param2;
         addChild(this.rywaj);
         addChild(this.gip);
         if(gs_.map==null||gs_.map.player_==null)
         {
            return;
         }
         var _loc3_:Player = gs_.map.player_;
         this.nameText_=this.haq();
         this.rywaj.addChild(this.nameText_);
         this.ryfekecu=new Telir("",20,50,Currency.win);
         this.ryfekecu.addEventListener(MouseEvent.CLICK,this.vysukonum);
         this.rywaj.addChild(this.ryfekecu);
         this.kazozakil=new Telir("",20,500,Currency.FAME);
         if(_loc3_.qyp<500)
         {
            this.kazozakil.setEnabled(false);
         }
         else
         {
            this.kazozakil.addEventListener(MouseEvent.CLICK,this.wif);
         }
         this.rywaj.addChild(this.kazozakil);
         this.kazozakil.zesi.addOnce(this.alignUI);
         this.qykypih=new Liwyny();
         this.qykypih.setSize(18).setColor(16711680).setTextWidth(WIDTH).setWordWrap(true).setMultiLine(true).setAutoSize(TextFieldAutoSize.CENTER).setBold(true).setHTML(true);
         this.qykypih.setStringBuilder(new Kybidu().setParams(Vibemod.wufykobo).setPrefix("<p align=\"center\">").setPostfix("</p>"));
         this.qykypih.filters=[new DropShadowFilter(0,0,0)];
         this.qykypih.y=HEIGHT-45;
         this.gip.addChild(this.qykypih);
         this.fonote=this.haq();
         this.gip.addChild(this.fonote);
         return;
      }

      public const nemeg:Qanyduk = new Qanyduk(int);

      private var gilyzygag:ArenaPortal;

      private var rywaj:Sprite;

      private var nameText_:Liwyny;

      private var ryfekecu:Telir;

      private var kazozakil:Telir;

      private var gip:Sprite;

      private var fonote:Guzowoja;

      private var qykypih:Liwyny;

      private function alignUI() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.ryfekecu.x=WIDTH*0.25-this.ryfekecu.width/2;
         this.ryfekecu.y=HEIGHT-this.ryfekecu.height-4;
         this.kazozakil.x=WIDTH*0.75-this.kazozakil.width/2;
         this.kazozakil.y=HEIGHT-this.kazozakil.height-4;
         return;
      }

      private function vysukonum(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.nemeg.dispatch(Currency.win);
         return;
      }

      private function wif(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.nemeg.dispatch(Currency.FAME);
         return;
      }

      override public function draw() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.rywaj.visible=this.gilyzygag.zamyw;
         this.gip.visible=!this.gilyzygag.zamyw;
         return;
      }

      private function haq() : Liwyny {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Liwyny = null;
         _loc1_=new Liwyny();
         _loc1_.setSize(18).setColor(16777215).setTextWidth(WIDTH).setWordWrap(true).setMultiLine(true).setAutoSize(TextFieldAutoSize.CENTER).setBold(true).setHTML(true);
         _loc1_.setStringBuilder(new Kybidu().setParams(Vibemod.guci).setPrefix("<p align=\"center\">").setPostfix("</p>"));
         _loc1_.filters=[new DropShadowFilter(0,0,0)];
         _loc1_.y=6;
         return _loc1_;
      }
   }

}