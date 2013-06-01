package pigeguwo
{
[CLASS1101]   import kabam.rotmg.assets.services.Vohemija;
   import tehakab.Supuvygac;
   import com.company.assembleegameclient.objects.Player;
   import com.company.assembleegameclient.ui.Semytuqa;
   import com.company.assembleegameclient.ui.StatusBar;
   import com.company.assembleegameclient.ui.Detys;
   import pudev.Capitu;
   import ferozosyf.Hekuli;
   import ferozosyf.Pele;
   import com.company.assembleegameclient.appengine.Wus;
   import jutesesel.Qibigagal;
   import com.company.assembleegameclient.objects.ObjectLibrary;
   import tehakab.Cusifyha;
   import tehakab.Copaqufiv;
   import haqakel.Kefyfa;
   import kuzycyw.Cymydef;
   import com.company.assembleegameclient.util.Gugi;
   import totuhare.Zufi;
   import flash.filters.DropShadowFilter;


   public class MyPlayerToolTip extends Jazyv
   {
      public function MyPlayerToolTip(param1:String, param2:XML, param3:Wus) {
         var _loc4_:* = false;
         var _loc5_:* = true;
         super(3552822,1,16777215,1);
         this.qev=param1;
         this.juduqan=param2;
         this.charStats=param3;
         return;
      }

      private var factory:Vohemija;

      private var classes:Supuvygac;

      public var player_:Player;

      private var dodiny:Semytuqa;

      private var pugifin:StatusBar;

      private var viceha:StatusBar;

      private var gorudohy:Detys;

      private var bestLevel_:Capitu;

      private var nextClassQuest_:Capitu;

      private var vuvyzy:Hekuli;

      private var nidiny:Pele;

      private var qev:String;

      private var juduqan:XML;

      private var charStats:Wus;

      public function jypebozu() : void {
         var _loc6_:* = false;
         var _loc7_:* = true;
         this.factory=Qibigagal.husuha().getInstance(Vohemija);
         this.classes=Qibigagal.husuha().getInstance(Supuvygac);
         var _loc1_:int = int(this.juduqan.ObjectType);
         var _loc2_:XML = ObjectLibrary.zedij[_loc1_];
         this.player_=Player.gezoqu(this.qev,this.juduqan);
         var _loc3_:Cusifyha = this.classes.waqy(this.player_.objectType_);
         var _loc4_:Copaqufiv = _loc3_.pikyremo.vobasyg(this.juduqan.Texture);
         this.player_.haci=this.factory.wivyh(_loc4_.jaqyb);
         this.dodiny=new Semytuqa(11776947,true,this.player_);
         addChild(this.dodiny);
         this.pugifin=new StatusBar(176,16,14693428,5526612,Kefyfa.hosu);
         this.pugifin.x=6;
         this.pugifin.y=40;
         addChild(this.pugifin);
         this.viceha=new StatusBar(176,16,6325472,5526612,Kefyfa.dulu);
         this.viceha.x=6;
         this.viceha.y=64;
         addChild(this.viceha);
         this.vuvyzy=new Hekuli(null,this.player_.panel,this.player_);
         this.vuvyzy.x=8;
         this.vuvyzy.y=88;
         addChild(this.vuvyzy);
         this.vuvyzy.setItems(this.player_.wasidu);
         this.nidiny=new Pele(null,this.player_,Cymydef.nybe);
         this.nidiny.x=8;
         this.nidiny.y=132;
         addChild(this.nidiny);
         this.nidiny.setItems(this.player_.wasidu);
         this.gorudohy=new Detys(100,1842204);
         this.gorudohy.x=6;
         this.gorudohy.y=228;
         addChild(this.gorudohy);
         this.lojog();
         this.bestLevel_.x=8;
         this.bestLevel_.y=height-2;
         var _loc5_:int = Gugi.nextStarFame(this.charStats==null?0:this.charStats.bukiga(),0);
         if(_loc5_>0)
         {
            this.lecos(_loc5_,_loc2_);
         }
         return;
      }

      public function lecos(param1:int, param2:XML) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.nextClassQuest_=new Capitu().setSize(13).setColor(16549442).setTextWidth(174);
         this.nextClassQuest_.setStringBuilder(new Zufi().setParams(Kefyfa.majocade,
            {
               nextStarFame:param1,
               character:param2.DisplayId
            }
         ));
         this.nextClassQuest_.filters=[new DropShadowFilter(0,0,0)];
         addChild(this.nextClassQuest_);
         juwocez.push(this.nextClassQuest_.textChanged);
         return;
      }

      public function lojog() : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         this.bestLevel_=new Capitu().setSize(14).setColor(6206769);
         var _loc1_:int = this.charStats==null?0:this.charStats.numStars();
         var _loc2_:String = (this.charStats!=null?this.charStats.bestLevel():0).toString();
         var _loc3_:String = (this.charStats!=null?this.charStats.bukiga():0).toString();
         this.bestLevel_.setStringBuilder(new Zufi().setParams(Kefyfa.ceb,
            {
               numStars:_loc1_,
               bestLevel:_loc2_,
               fame:_loc3_
            }
         ));
         this.bestLevel_.filters=[new DropShadowFilter(0,0,0)];
         addChild(this.bestLevel_);
         juwocez.push(this.bestLevel_.textChanged);
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
         this.pugifin.draw(this.player_.qyhefanyk,this.player_.liq,this.player_.tary,this.player_.qojave);
         this.viceha.draw(this.player_.kyl,this.player_.naduzab,this.player_.najihoce,this.player_.huhinu);
         this.gorudohy.romy(width-10,1842204);
         super.draw();
         return;
      }
   }
[/CLASS]
}