package mavew
{
   import com.company.assembleegameclient.objects.Player;
   import com.company.assembleegameclient.ui.Nyre;
   import com.company.assembleegameclient.ui.RankText;
   import com.company.assembleegameclient.ui.Kedilur;
   import com.company.assembleegameclient.ui.StatusBar;
   import hivysif.Guzowoja;
   import copano.Myfely;
   import komi.Vibemod;
   import flash.text.TextFieldAutoSize;
   import jediwip.Kybidu;
   import flash.filters.DropShadowFilter;


   public class PlayerToolTip extends Qyryl
   {
      public function PlayerToolTip(param1:Player) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:* = 0;
         super(3552822,0.5,16777215,1);
         this.player_=param1;
         this.jypiryqy=new Nyre(11776947,true,this.player_);
         addChild(this.jypiryqy);
         _loc2_=34;
         this.kyb=new RankText(this.player_.numStars_,false,true);
         this.kyb.x=6;
         this.kyb.y=_loc2_;
         addChild(this.kyb);
         _loc2_=_loc2_+30;
         if(!(param1.guildName_==null)&&!(param1.guildName_==""))
         {
            this.pyma=new Kedilur(this.player_.guildName_,this.player_.guildRank_,136);
            this.pyma.x=6;
            this.pyma.y=_loc2_-2;
            addChild(this.pyma);
            _loc2_=_loc2_+30;
         }
         this.voge=new StatusBar(176,16,14693428,5526612,Vibemod.nysirahec);
         this.voge.x=6;
         this.voge.y=_loc2_;
         addChild(this.voge);
         _loc2_=_loc2_+24;
         this.tynun=new StatusBar(176,16,6325472,5526612,Vibemod.reqodafes);
         this.tynun.x=6;
         this.tynun.y=_loc2_;
         addChild(this.tynun);
         _loc2_=_loc2_+24;
         this.ritaqyp=new Myfely(null,this.player_.bizysuhy,this.player_);
         this.ritaqyp.x=8;
         this.ritaqyp.y=_loc2_;
         addChild(this.ritaqyp);
         _loc2_=_loc2_+52;
         this.ruc=new Guzowoja().setSize(12).setColor(11776947);
         this.ruc.setAutoSize(TextFieldAutoSize.CENTER);
         this.ruc.setStringBuilder(new Kybidu().setParams(Vibemod.huti));
         this.ruc.filters=[new DropShadowFilter(0,0,0)];
         this.ruc.x=width/2;
         this.ruc.y=_loc2_;
         ryfoc.push(this.ruc.textChanged);
         addChild(this.ruc);
         return;
      }

      public var player_:Player;

      private var jypiryqy:Nyre;

      private var kyb:RankText;

      private var pyma:Kedilur;

      private var voge:StatusBar;

      private var tynun:StatusBar;

      private var ruc:Guzowoja;

      private var ritaqyp:Myfely;

      override public function draw() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.voge.draw(this.player_.vypo,this.player_.kukigim,this.player_.jomafu,this.player_.suvof);
         this.tynun.draw(this.player_.nydyry,this.player_.nivuj,this.player_.kuvupaco,this.player_.dopypi);
         this.ritaqyp.setItems(this.player_.zosig);
         this.kyb.draw(this.player_.numStars_);
         super.draw();
         return;
      }
   }

}