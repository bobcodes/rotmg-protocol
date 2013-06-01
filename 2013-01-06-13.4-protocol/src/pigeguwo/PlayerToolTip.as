package pigeguwo
{
[CLASS1665]   import com.company.assembleegameclient.objects.Player;
   import com.company.assembleegameclient.ui.Semytuqa;
   import com.company.assembleegameclient.ui.RankText;
   import com.company.assembleegameclient.ui.Defik;
   import com.company.assembleegameclient.ui.StatusBar;
   import pudev.Capitu;
   import ferozosyf.Hekuli;
   import haqakel.Kefyfa;
   import flash.text.TextFieldAutoSize;
   import totuhare.Zufi;
   import flash.filters.DropShadowFilter;


   public class PlayerToolTip extends Jazyv
   {
      public function PlayerToolTip(param1:Player) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:* = 0;
         super(3552822,0.5,16777215,1);
         this.player_=param1;
         this.dodiny=new Semytuqa(11776947,true,this.player_);
         addChild(this.dodiny);
         _loc2_=34;
         this.hyjafaki=new RankText(this.player_.numStars_,false,true);
         this.hyjafaki.x=6;
         this.hyjafaki.y=_loc2_;
         addChild(this.hyjafaki);
         _loc2_=_loc2_+30;
         if(!(param1.guildName_==null)&&!(param1.guildName_==""))
         {
            this.ham=new Defik(this.player_.guildName_,this.player_.guildRank_,136);
            this.ham.x=6;
            this.ham.y=_loc2_-2;
            addChild(this.ham);
            _loc2_=_loc2_+30;
         }
         this.pugifin=new StatusBar(176,16,14693428,5526612,Kefyfa.hosu);
         this.pugifin.x=6;
         this.pugifin.y=_loc2_;
         addChild(this.pugifin);
         _loc2_=_loc2_+24;
         this.viceha=new StatusBar(176,16,6325472,5526612,Kefyfa.dulu);
         this.viceha.x=6;
         this.viceha.y=_loc2_;
         addChild(this.viceha);
         _loc2_=_loc2_+24;
         this.vuvyzy=new Hekuli(null,this.player_.panel,this.player_);
         this.vuvyzy.x=8;
         this.vuvyzy.y=_loc2_;
         addChild(this.vuvyzy);
         _loc2_=_loc2_+52;
         this.tugym=new Capitu().setSize(12).setColor(11776947);
         this.tugym.setAutoSize(TextFieldAutoSize.CENTER);
         this.tugym.setStringBuilder(new Zufi().setParams(Kefyfa.poquziv));
         this.tugym.filters=[new DropShadowFilter(0,0,0)];
         this.tugym.x=width/2;
         this.tugym.y=_loc2_;
         juwocez.push(this.tugym.textChanged);
         addChild(this.tugym);
         return;
      }

      public var player_:Player;

      private var dodiny:Semytuqa;

      private var hyjafaki:RankText;

      private var ham:Defik;

      private var pugifin:StatusBar;

      private var viceha:StatusBar;

      private var tugym:Capitu;

      private var vuvyzy:Hekuli;

      override public function draw() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.pugifin.draw(this.player_.qyhefanyk,this.player_.liq,this.player_.tary,this.player_.qojave);
         this.viceha.draw(this.player_.kyl,this.player_.naduzab,this.player_.najihoce,this.player_.huhinu);
         this.vuvyzy.setItems(this.player_.wasidu);
         this.hyjafaki.draw(this.player_.numStars_);
         super.draw();
         return;
      }
   }
[/CLASS]
}