package wenono
{
   import flash.display.Sprite;
   import flash.geom.Point;
   import hepiwus.Qugywag;
   import copano.Myfely;
   import com.company.assembleegameclient.objects.Player;
   import cerywij.Qedicudo;
   import fytalis.Tyhu;
   import com.company.assembleegameclient.ui.Huvigeroh;
   import com.company.assembleegameclient.game.GameSprite;
   import __AS3__.vec.Vector;
   import flash.display.IGraphicsData;
   import flash.display.GraphicsSolidFill;
   import flash.display.GraphicsPath;
   import com.company.util.Dyrejocu;
   import com.company.assembleegameclient.game.Pajemiz;
   import wipivyv.Demem;
   import flash.events.Event;
   import wipivyv.Tytekize;
   import wipivyv.Fono;
   import com.company.util.Kideky;


   public class Tewefem extends Sprite implements Cibibi
   {
      public function Tewefem() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         this.tutivyhep();
         this.hek();
         this.deloporo();
         return;
      }

      private const ribemudef:Point = new Point(0,0);

      private const vumav:Point = new Point(4,4);

      private const dehury:Point = new Point(0,198);

      private const son:Point = new Point(12,230);

      private const ryh:Point = new Point(14,304);

      private const rohuleca:Point = new Point(7,346);

      private const zibi:Point = new Point(0,500);

      private var background:Duce;

      private var nemeh:Qugywag;

      private var qonityma:Myfely;

      private var gib:Worudo;

      private var zeg:CharacterDetailsView;

      private var laziguzy:Sprite;

      private var player:Player;

      public var qymih:Qedicudo;

      public var interactPanel:Tyhu;

      public var zeho:Huvigeroh;

      private function tutivyhep() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.background=new Duce();
         this.nemeh=new Qugywag(192,192);
         this.qymih=new Qedicudo();
         this.zeg=new CharacterDetailsView();
         this.gib=new Worudo();
         return;
      }

      private function hek() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         addChild(this.background);
         addChild(this.nemeh);
         addChild(this.qymih);
         addChild(this.zeg);
         addChild(this.gib);
         return;
      }

      private function deloporo() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.background.x=this.ribemudef.x;
         this.background.y=this.ribemudef.y;
         this.nemeh.x=this.vumav.x;
         this.nemeh.y=this.vumav.y;
         this.qymih.x=this.rohuleca.x;
         this.qymih.y=this.rohuleca.y;
         this.zeg.x=this.dehury.x;
         this.zeg.y=this.dehury.y;
         this.gib.x=this.son.x;
         this.gib.y=this.son.y;
         return;
      }

      public function jazoqizon(param1:GameSprite) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.player=param1.map.player_;
         this.kyzitusa();
         this.wuwyq();
         this.jebaba(param1);
         return;
      }

      private function jebaba(param1:GameSprite) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.interactPanel=new Tyhu(param1,this.player,200,100);
         this.interactPanel.x=this.zibi.x;
         this.interactPanel.y=this.zibi.y;
         addChild(this.interactPanel);
         return;
      }

      private function wuwyq() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.qonityma=new Myfely(this.player,this.player.bizysuhy,this.player);
         this.qonityma.x=this.ryh.x;
         this.qonityma.y=this.ryh.y;
         addChild(this.qonityma);
         return;
      }

      private function kyzitusa() : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:Vector.<IGraphicsData> = null;
         var _loc1_:GraphicsSolidFill = new GraphicsSolidFill(6776679,1);
         var _loc2_:GraphicsPath = new GraphicsPath(new Vector.<int>(),new Vector.<Number>());
         new Vector.<IGraphicsData>(3)[0]=_loc1_;
         new Vector.<IGraphicsData>(3)[1]=_loc2_;
         new Vector.<IGraphicsData>(3)[2]=Dyrejocu.END_FILL;
         _loc3_=new Vector.<IGraphicsData>(3);
         Dyrejocu.moluv(0,0,178,46,6,[1,1,1,1],_loc2_);
         this.laziguzy=new Sprite();
         this.laziguzy.x=this.ryh.x-3;
         this.laziguzy.y=this.ryh.y-3;
         this.laziguzy.graphics.drawGraphicsData(_loc3_);
         addChild(this.laziguzy);
         return;
      }

      public function draw() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.qonityma)
         {
            this.qonityma.draw();
         }
         if(this.interactPanel)
         {
            this.interactPanel.draw();
         }
         return;
      }

      public function startTrade(param1:Pajemiz, param2:Demem) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(!this.zeho)
         {
            this.zeho=new Huvigeroh(param1,param2);
            this.zeho.y=200;
            this.zeho.addEventListener(Event.CANCEL,this.bawaso);
            addChild(this.zeho);
            this.lebehyh(false);
         }
         return;
      }

      private function lebehyh(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.zeg.visible=param1;
         this.gib.visible=param1;
         this.qymih.visible=param1;
         this.qonityma.visible=param1;
         this.laziguzy.visible=param1;
         this.interactPanel.visible=param1;
         return;
      }

      public function tradeDone() : void {
         var [OFS2]_loc1_:* = [/OFS]true;
         var [OFS3]_loc2_:* = [/OFS]false;
         this.[OFS7]zefuqyw[/OFS][OFS7]([/OFS][OFS7])[/OFS];
         [OFS11]return[/OFS];
      }

      public function tradeChanged(param1:Tytekize) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.zeho)
         {
            this.zeho.pymy(param1.offer_);
         }
         return;
      }

      public function tradeAccepted(param1:Fono) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.zeho)
         {
            this.zeho.kogotumy(param1.myOffer_,param1.yourOffer_);
         }
         return;
      }

      private function bawaso(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.zefuqyw();
         return;
      }

      private function zefuqyw() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.zeho)
         {
            Kideky.kapo(this,this.zeho);
            this.zeho.removeEventListener(Event.CANCEL,this.bawaso);
            this.zeho=null;
            this.lebehyh(true);
         }
         return;
      }
   }

}