package ruwysepyd
{
   import flash.display.Sprite;
   import flash.geom.Point;
   import hetenedu.Zipube;
   import suko.Cogojy;
   import com.company.assembleegameclient.objects.Player;
   import qefinah.Zygafe;
   import vaqob.Rysyfuhyv;
   import com.company.assembleegameclient.ui.Sisinyta;
   import com.company.assembleegameclient.game.GameSprite;
   import __AS3__.vec.Vector;
   import flash.display.IGraphicsData;
   import flash.display.GraphicsSolidFill;
   import flash.display.GraphicsPath;
   import com.company.util.Tizulo;
   import com.company.assembleegameclient.game.Nukomesih;
   import quqe.Kugupyder;
   import flash.events.Event;
   import quqe.Jecy;
   import quqe.Gykod;
   import com.company.util.Hepapi;


   public class Jyjimagi extends Sprite implements Hepihipi
   {
      public function Jyjimagi() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         this.ravityna();
         this.vyl();
         this.cenezyr();
         return;
      }

      private const kykovim:Point = new Point(0,0);

      private const guba:Point = new Point(4,4);

      private const husy:Point = new Point(0,198);

      private const vitehuja:Point = new Point(12,230);

      private const wurypyf:Point = new Point(14,304);

      private const jesabebo:Point = new Point(7,346);

      private const zadu:Point = new Point(0,500);

      private var background:Hiru;

      private var tezatibi:Zipube;

      private var qopovuqo:Cogojy;

      private var jave:Lujaj;

      private var ciwure:CharacterDetailsView;

      private var pawiti:Sprite;

      private var player:Player;

      public var pof:Zygafe;

      public var interactPanel:Rysyfuhyv;

      public var qeqof:Sisinyta;

      private function ravityna() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.background=new Hiru();
         this.tezatibi=new Zipube(192,192);
         this.pof=new Zygafe();
         this.ciwure=new CharacterDetailsView();
         this.jave=new Lujaj();
         return;
      }

      private function vyl() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         addChild(this.background);
         addChild(this.tezatibi);
         addChild(this.pof);
         addChild(this.ciwure);
         addChild(this.jave);
         return;
      }

      private function cenezyr() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.background.x=this.kykovim.x;
         this.background.y=this.kykovim.y;
         this.tezatibi.x=this.guba.x;
         this.tezatibi.y=this.guba.y;
         this.pof.x=this.jesabebo.x;
         this.pof.y=this.jesabebo.y;
         this.ciwure.x=this.husy.x;
         this.ciwure.y=this.husy.y;
         this.jave.x=this.vitehuja.x;
         this.jave.y=this.vitehuja.y;
         return;
      }

      public function myrojy(param1:GameSprite) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.player=param1.map.player_;
         this.zar();
         this.dygo();
         this.qab(param1);
         return;
      }

      private function qab(param1:GameSprite) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.interactPanel=new Rysyfuhyv(param1,this.player,200,100);
         this.interactPanel.x=this.zadu.x;
         this.interactPanel.y=this.zadu.y;
         addChild(this.interactPanel);
         return;
      }

      private function dygo() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.qopovuqo=new Cogojy(this.player,this.player.nigy,this.player);
         this.qopovuqo.x=this.wurypyf.x;
         this.qopovuqo.y=this.wurypyf.y;
         addChild(this.qopovuqo);
         return;
      }

      private function zar() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:Vector.<IGraphicsData> = null;
         var _loc1_:GraphicsSolidFill = new GraphicsSolidFill(6776679,1);
         var _loc2_:GraphicsPath = new GraphicsPath(new Vector.<int>(),new Vector.<Number>());
         new Vector.<IGraphicsData>(3)[0]=_loc1_;
         new Vector.<IGraphicsData>(3)[1]=_loc2_;
         new Vector.<IGraphicsData>(3)[2]=Tizulo.END_FILL;
         _loc3_=new Vector.<IGraphicsData>(3);
         Tizulo.woforyzib(0,0,178,46,6,[1,1,1,1],_loc2_);
         this.pawiti=new Sprite();
         this.pawiti.x=this.wurypyf.x-3;
         this.pawiti.y=this.wurypyf.y-3;
         this.pawiti.graphics.drawGraphicsData(_loc3_);
         addChild(this.pawiti);
         return;
      }

      public function draw() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.qopovuqo)
         {
            this.qopovuqo.draw();
         }
         if(this.interactPanel)
         {
            this.interactPanel.draw();
         }
         return;
      }

      public function startTrade(param1:Nukomesih, param2:Kugupyder) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(!this.qeqof)
         {
            this.qeqof=new Sisinyta(param1,param2);
            this.qeqof.y=200;
            this.qeqof.addEventListener(Event.CANCEL,this.pigimody);
            addChild(this.qeqof);
            this.jywehorec(false);
         }
         return;
      }

      private function jywehorec(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.ciwure.visible=param1;
         this.jave.visible=param1;
         this.pof.visible=param1;
         this.qopovuqo.visible=param1;
         this.pawiti.visible=param1;
         this.interactPanel.visible=param1;
         return;
      }

      public function tradeDone() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.dami();
         return;
      }

      public function tradeChanged(param1:Jecy) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.qeqof)
         {
            this.qeqof.giliput(param1.offer_);
         }
         return;
      }

      public function tradeAccepted(param1:Gykod) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.qeqof)
         {
            this.qeqof.mozebef(param1.myOffer_,param1.yourOffer_);
         }
         return;
      }

      private function pigimody(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.dami();
         return;
      }

      private function dami() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.qeqof)
         {
            Hepapi.zolinoqa(this,this.qeqof);
            this.qeqof.removeEventListener(Event.CANCEL,this.pigimody);
            this.qeqof=null;
            this.jywehorec(true);
         }
         return;
      }
   }

}