package povopito
{
   import com.company.assembleegameclient.objects.Player;
   import com.company.assembleegameclient.ui.Ses;
   import com.company.assembleegameclient.ui.RankText;
   import com.company.assembleegameclient.ui.Teh;
   import com.company.assembleegameclient.ui.StatusBar;
   import movimet.Lufub;
   import suko.Cogojy;
   import aaa.rotmg.i18n.I18nKeys;
   import flash.text.TextFieldAutoSize;
   import nec.Sire;
   import flash.filters.DropShadowFilter;


   public class PlayerToolTip extends Ryduwi
   {
      public function PlayerToolTip(param1:Player) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:* = 0;
         super(3552822,0.5,16777215,1);
         this.player_=param1;
         this.gupudylon=new Ses(11776947,true,this.player_);
         addChild(this.gupudylon);
         _loc2_=34;
         this.duzo=new RankText(this.player_.numStars_,false,true);
         this.duzo.x=6;
         this.duzo.y=_loc2_;
         addChild(this.duzo);
         _loc2_=_loc2_+30;
         if(!(param1.guildName_==null)&&!(param1.guildName_==""))
         {
            this.pony=new Teh(this.player_.guildName_,this.player_.guildRank_,136);
            this.pony.x=6;
            this.pony.y=_loc2_-2;
            addChild(this.pony);
            _loc2_=_loc2_+30;
         }
         this.vefaneb=new StatusBar(176,16,14693428,5526612,I18nKeys.fiwus);
         this.vefaneb.x=6;
         this.vefaneb.y=_loc2_;
         addChild(this.vefaneb);
         _loc2_=_loc2_+24;
         this.lygaze=new StatusBar(176,16,6325472,5526612,I18nKeys.feput);
         this.lygaze.x=6;
         this.lygaze.y=_loc2_;
         addChild(this.lygaze);
         _loc2_=_loc2_+24;
         this.rowurej=new Cogojy(null,this.player_.nigy,this.player_);
         this.rowurej.x=8;
         this.rowurej.y=_loc2_;
         addChild(this.rowurej);
         _loc2_=_loc2_+52;
         this.goh=new Lufub().setSize(12).setColor(11776947);
         this.goh.setAutoSize(TextFieldAutoSize.CENTER);
         this.goh.setStringBuilder(new Sire().setParams(I18nKeys.tybopep));
         this.goh.filters=[new DropShadowFilter(0,0,0)];
         this.goh.x=width/2;
         this.goh.y=_loc2_;
         jiguvovu.push(this.goh.textChanged);
         addChild(this.goh);
         return;
      }

      public var player_:Player;

      private var gupudylon:Ses;

      private var duzo:RankText;

      private var pony:Teh;

      private var vefaneb:StatusBar;

      private var lygaze:StatusBar;

      private var goh:Lufub;

      private var rowurej:Cogojy;

      override public function draw() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.vefaneb.draw(this.player_.ryqi,this.player_.ruguj,this.player_.toq,this.player_.tucyb);
         this.lygaze.draw(this.player_.zamonoca,this.player_.boliqoka,this.player_.nyderod,this.player_.malezu);
         this.rowurej.setItems(this.player_.jevuqike);
         this.duzo.draw(this.player_.numStars_);
         super.draw();
         return;
      }
   }

}