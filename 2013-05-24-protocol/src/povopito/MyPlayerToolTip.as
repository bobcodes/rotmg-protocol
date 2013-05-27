package povopito
{
   import kabam.rotmg.assets.services.Cafe;
   import fulaw.Vihekivuc;
   import com.company.assembleegameclient.objects.Player;
   import com.company.assembleegameclient.ui.Ses;
   import com.company.assembleegameclient.ui.StatusBar;
   import com.company.assembleegameclient.ui.Luvu;
   import movimet.Lufub;
   import suko.Cogojy;
   import suko.Tarus;
   import com.company.assembleegameclient.appengine.Lycuhej;
   import jag.Giq;
   import com.company.assembleegameclient.objects.ObjectLibrary;
   import fulaw.Jimi;
   import fulaw.Dasin;
   import aaa.rotmg.i18n.I18nKeys;
   import pirus.Lekakyry;
   import com.company.assembleegameclient.util.Wagoq;
   import nec.Sire;
   import flash.filters.DropShadowFilter;


   public class MyPlayerToolTip extends Ryduwi
   {
      public function MyPlayerToolTip(param1:String, param2:XML, param3:Lycuhej) {
         var _loc4_:* = true;
         var _loc5_:* = false;
         super(3552822,1,16777215,1);
         this.kovomo=param1;
         this.gubez=param2;
         this.charStats=param3;
         return;
      }

      private var factory:Cafe;

      private var classes:Vihekivuc;

      public var player_:Player;

      private var gupudylon:Ses;

      private var vefaneb:StatusBar;

      private var lygaze:StatusBar;

      private var kity:Luvu;

      private var bestLevel_:Lufub;

      private var nextClassQuest_:Lufub;

      private var rowurej:Cogojy;

      private var qukip:Tarus;

      private var kovomo:String;

      private var gubez:XML;

      private var charStats:Lycuhej;

      public function meje() : void {
         var _loc6_:* = false;
         var _loc7_:* = true;
         this.factory=Giq.kid().getInstance(Cafe);
         this.classes=Giq.kid().getInstance(Vihekivuc);
         var _loc1_:int = int(this.gubez.ObjectType);
         var _loc2_:XML = ObjectLibrary.tem[_loc1_];
         this.player_=Player.sapijuty(this.kovomo,this.gubez);
         var _loc3_:Jimi = this.classes.lyt(this.player_.objectType_);
         var _loc4_:Dasin = _loc3_.socucu.sek(this.gubez.Texture);
         this.player_.saqizy=this.factory.maso(_loc4_.ladewavaq);
         this.gupudylon=new Ses(11776947,true,this.player_);
         addChild(this.gupudylon);
         this.vefaneb=new StatusBar(176,16,14693428,5526612,I18nKeys.fiwus);
         this.vefaneb.x=6;
         this.vefaneb.y=40;
         addChild(this.vefaneb);
         this.lygaze=new StatusBar(176,16,6325472,5526612,I18nKeys.feput);
         this.lygaze.x=6;
         this.lygaze.y=64;
         addChild(this.lygaze);
         this.rowurej=new Cogojy(null,this.player_.nigy,this.player_);
         this.rowurej.x=8;
         this.rowurej.y=88;
         addChild(this.rowurej);
         this.rowurej.setItems(this.player_.jevuqike);
         this.qukip=new Tarus(null,this.player_,Lekakyry.bibole);
         this.qukip.x=8;
         this.qukip.y=132;
         addChild(this.qukip);
         this.qukip.setItems(this.player_.jevuqike);
         this.kity=new Luvu(100,1842204);
         this.kity.x=6;
         this.kity.y=228;
         addChild(this.kity);
         this.hoqocem();
         this.bestLevel_.x=8;
         this.bestLevel_.y=height-2;
         var _loc5_:int = Wagoq.nextStarFame(this.charStats==null?0:this.charStats.gat(),0);
         if(_loc5_>0)
         {
            this.fadiga(_loc5_,_loc2_);
         }
         return;
      }

      public function fadiga(param1:int, param2:XML) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.nextClassQuest_=new Lufub().setSize(13).setColor(16549442).setTextWidth(174);
         this.nextClassQuest_.setStringBuilder(new Sire().setParams(I18nKeys.simuvoha,
            {
               nextStarFame:param1,
               character:param2.DisplayId
            }
         ));
         this.nextClassQuest_.filters=[new DropShadowFilter(0,0,0)];
         addChild(this.nextClassQuest_);
         jiguvovu.push(this.nextClassQuest_.textChanged);
         return;
      }

      public function hoqocem() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         this.bestLevel_=new Lufub().setSize(14).setColor(6206769);
         var _loc1_:int = this.charStats==null?0:this.charStats.numStars();
         var _loc2_:String = (this.charStats!=null?this.charStats.bestLevel():0).toString();
         var _loc3_:String = (this.charStats!=null?this.charStats.gat():0).toString();
         this.bestLevel_.setStringBuilder(new Sire().setParams(I18nKeys.sumureryt,
            {
               numStars:_loc1_,
               bestLevel:_loc2_,
               fame:_loc3_
            }
         ));
         this.bestLevel_.filters=[new DropShadowFilter(0,0,0)];
         addChild(this.bestLevel_);
         jiguvovu.push(this.bestLevel_.textChanged);
         return;
      }

      override protected function alignUI() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.nextClassQuest_)
         {
            this.nextClassQuest_.x=8;
            this.nextClassQuest_.y=this.bestLevel_.getBounds(this).bottom-2;
         }
         return;
      }

      override public function draw() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.vefaneb.draw(this.player_.ryqi,this.player_.ruguj,this.player_.toq,this.player_.tucyb);
         this.lygaze.draw(this.player_.zamonoca,this.player_.boliqoka,this.player_.nyderod,this.player_.malezu);
         this.kity.jum(width-10,1842204);
         super.draw();
         return;
      }
   }

}