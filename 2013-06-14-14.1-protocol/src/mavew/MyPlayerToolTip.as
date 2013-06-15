package mavew
{
   import kabam.rotmg.assets.services.Bytedif;
   import poho.Kyhy;
   import com.company.assembleegameclient.objects.Player;
   import com.company.assembleegameclient.ui.Nyre;
   import com.company.assembleegameclient.ui.StatusBar;
   import com.company.assembleegameclient.ui.Gymajyzu;
   import hivysif.Guzowoja;
   import copano.Myfely;
   import copano.Jofedofuq;
   import com.company.assembleegameclient.appengine.Zef;
   import sijizoh.Duq;
   import com.company.assembleegameclient.objects.ObjectLibrary;
   import poho.Dywygave;
   import poho.Pom;
   import komi.Vibemod;
   import pilage.Patale;
   import com.company.assembleegameclient.util.Cinihel;
   import jediwip.Kybidu;
   import flash.filters.DropShadowFilter;


   public class MyPlayerToolTip extends Qyryl
   {
      public function MyPlayerToolTip(param1:String, param2:XML, param3:Zef) {
         var _loc4_:* = false;
         var _loc5_:* = true;
         super(3552822,1,16777215,1);
         this.kaja=param1;
         this.nod=param2;
         this.charStats=param3;
         return;
      }

      private var factory:Bytedif;

      private var classes:Kyhy;

      public var player_:Player;

      private var jypiryqy:Nyre;

      private var voge:StatusBar;

      private var tynun:StatusBar;

      private var kojopy:Gymajyzu;

      private var bestLevel_:Guzowoja;

      private var nextClassQuest_:Guzowoja;

      private var ritaqyp:Myfely;

      private var lobo:Jofedofuq;

      private var kaja:String;

      private var nod:XML;

      private var charStats:Zef;

      public function zafu() : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         this.factory=Duq.pamazo().getInstance(Bytedif);
         this.classes=Duq.pamazo().getInstance(Kyhy);
         var _loc1_:int = int(this.nod.ObjectType);
         var _loc2_:XML = ObjectLibrary.ziq[_loc1_];
         this.player_=Player.dany(this.kaja,this.nod);
         var _loc3_:Dywygave = this.classes.gug(this.player_.objectType_);
         var _loc4_:Pom = _loc3_.sybiwu.vobydozid(this.nod.Texture);
         this.player_.bisyfewyt=this.factory.koqinal(_loc4_.fegotu);
         this.jypiryqy=new Nyre(11776947,true,this.player_);
         addChild(this.jypiryqy);
         this.voge=new StatusBar(176,16,14693428,5526612,Vibemod.nysirahec);
         this.voge.x=6;
         this.voge.y=40;
         addChild(this.voge);
         this.tynun=new StatusBar(176,16,6325472,5526612,Vibemod.reqodafes);
         this.tynun.x=6;
         this.tynun.y=64;
         addChild(this.tynun);
         this.ritaqyp=new Myfely(null,this.player_.bizysuhy,this.player_);
         this.ritaqyp.x=8;
         this.ritaqyp.y=88;
         addChild(this.ritaqyp);
         this.ritaqyp.setItems(this.player_.zosig);
         this.lobo=new Jofedofuq(null,this.player_,Patale.hunyrigy);
         this.lobo.x=8;
         this.lobo.y=132;
         addChild(this.lobo);
         this.lobo.setItems(this.player_.zosig);
         this.kojopy=new Gymajyzu(100,1842204);
         this.kojopy.x=6;
         this.kojopy.y=228;
         addChild(this.kojopy);
         this.merigoto();
         this.bestLevel_.x=8;
         this.bestLevel_.y=height-2;
         var _loc5_:int = Cinihel.nextStarFame(this.charStats==null?0:this.charStats.lysatul(),0);
         if(_loc5_>0)
         {
            this.tyhehami(_loc5_,_loc2_);
         }
         return;
      }

      public function tyhehami(param1:int, param2:XML) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.nextClassQuest_=new Guzowoja().setSize(13).setColor(16549442).setTextWidth(174);
         this.nextClassQuest_.setStringBuilder(new Kybidu().setParams(Vibemod.nemo,
            {
               nextStarFame:param1,
               character:param2.DisplayId
            }
         ));
         this.nextClassQuest_.filters=[new DropShadowFilter(0,0,0)];
         addChild(this.nextClassQuest_);
         ryfoc.push(this.nextClassQuest_.textChanged);
         return;
      }

      public function merigoto() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         this.bestLevel_=new Guzowoja().setSize(14).setColor(6206769);
         var _loc1_:int = this.charStats==null?0:this.charStats.numStars();
         var _loc2_:String = (this.charStats!=null?this.charStats.bestLevel():0).toString();
         var _loc3_:String = (this.charStats!=null?this.charStats.lysatul():0).toString();
         this.bestLevel_.setStringBuilder(new Kybidu().setParams(Vibemod.cywem,
            {
               numStars:_loc1_,
               bestLevel:_loc2_,
               fame:_loc3_
            }
         ));
         this.bestLevel_.filters=[new DropShadowFilter(0,0,0)];
         addChild(this.bestLevel_);
         ryfoc.push(this.bestLevel_.textChanged);
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
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.voge.draw(this.player_.vypo,this.player_.kukigim,this.player_.jomafu,this.player_.suvof);
         this.tynun.draw(this.player_.nydyry,this.player_.nivuj,this.player_.kuvupaco,this.player_.dopypi);
         this.kojopy.hecymov(width-10,1842204);
         super.draw();
         return;
      }
   }

}