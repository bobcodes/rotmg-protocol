package tidi
{
[CLASS441]   import flash.display.Sprite;
   import flash.geom.Point;
   import wosate.Syryqud;
   import ferozosyf.Hekuli;
   import com.company.assembleegameclient.objects.Player;
   import dugahymu.Silevuq;
   import warude.Siqohi;
   import com.company.assembleegameclient.ui.Bypew;
   import com.company.assembleegameclient.game.GameSprite;
   import __AS3__.vec.Vector;
   import flash.display.IGraphicsData;
   import flash.display.GraphicsSolidFill;
   import flash.display.GraphicsPath;
   import com.company.util.Nosupygu;
   import com.company.assembleegameclient.game.Tosahafu;
   import mywyvuryw.Raja;
   import flash.events.Event;
   import mywyvuryw.Tumyriw;
   import mywyvuryw.Jogov;
   import com.company.util.Gyk;


   public class Vepel extends Sprite implements Bamahucac
   {
      public function Vepel() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         this.cim();
         this.gekohyr();
         this.sym();
         return;
      }

      private const nebu:Point = new Point(0,0);

      private const wizanomyd:Point = new Point(4,4);

      private const ricirudum:Point = new Point(0,198);

      private const kyn:Point = new Point(12,230);

      private const zas:Point = new Point(14,304);

      private const pipakof:Point = new Point(7,346);

      private const boda:Point = new Point(0,500);

      private var background:Memyky;

      private var zuwojyfyg:Syryqud;

      private var wob:Hekuli;

      private var biboheq:Qeno;

      private var ves:CharacterDetailsView;

      private var nugewe:Sprite;

      private var player:Player;

      public var kiki:Silevuq;

      public var interactPanel:Siqohi;

      public var leronaqy:Bypew;

      private function cim() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.background=new Memyky();
         this.zuwojyfyg=new Syryqud(192,192);
         this.kiki=new Silevuq();
         this.ves=new CharacterDetailsView();
         this.biboheq=new Qeno();
         return;
      }

      private function gekohyr() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         addChild(this.background);
         addChild(this.zuwojyfyg);
         addChild(this.kiki);
         addChild(this.ves);
         addChild(this.biboheq);
         return;
      }

      private function sym() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.background.x=this.nebu.x;
         this.background.y=this.nebu.y;
         this.zuwojyfyg.x=this.wizanomyd.x;
         this.zuwojyfyg.y=this.wizanomyd.y;
         this.kiki.x=this.pipakof.x;
         this.kiki.y=this.pipakof.y;
         this.ves.x=this.ricirudum.x;
         this.ves.y=this.ricirudum.y;
         this.biboheq.x=this.kyn.x;
         this.biboheq.y=this.kyn.y;
         return;
      }

      public function goqudanu(param1:GameSprite) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.player=param1.map.player_;
         this.fule();
         this.toge();
         this.gibyro(param1);
         return;
      }

      private function gibyro(param1:GameSprite) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.interactPanel=new Siqohi(param1,this.player,200,100);
         this.interactPanel.x=this.boda.x;
         this.interactPanel.y=this.boda.y;
         addChild(this.interactPanel);
         return;
      }

      private function toge() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.wob=new Hekuli(this.player,this.player.panel,this.player);
         this.wob.x=this.zas.x;
         this.wob.y=this.zas.y;
         addChild(this.wob);
         return;
      }

      private function fule() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:Vector.<IGraphicsData> = null;
         var _loc1_:GraphicsSolidFill = new GraphicsSolidFill(6776679,1);
         var _loc2_:GraphicsPath = new GraphicsPath(new Vector.<int>(),new Vector.<Number>());
         new Vector.<IGraphicsData>(3)[0]=_loc1_;
         new Vector.<IGraphicsData>(3)[1]=_loc2_;
         new Vector.<IGraphicsData>(3)[2]=Nosupygu.END_FILL;
         _loc3_=new Vector.<IGraphicsData>(3);
         Nosupygu.secebeq(0,0,178,46,6,[1,1,1,1],_loc2_);
         this.nugewe=new Sprite();
         this.nugewe.x=this.zas.x-3;
         this.nugewe.y=this.zas.y-3;
         this.nugewe.graphics.drawGraphicsData(_loc3_);
         addChild(this.nugewe);
         return;
      }

      public function draw() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.wob)
         {
            this.wob.draw();
         }
         if(this.interactPanel)
         {
            this.interactPanel.draw();
         }
         return;
      }

      public function startTrade(param1:Tosahafu, param2:Raja) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(!this.leronaqy)
         {
            this.leronaqy=new Bypew(param1,param2);
            this.leronaqy.y=200;
            this.leronaqy.addEventListener(Event.CANCEL,this.zipada);
            addChild(this.leronaqy);
            this.tarowy(false);
         }
         return;
      }

      private function tarowy(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.ves.visible=param1;
         this.biboheq.visible=param1;
         this.kiki.visible=param1;
         this.wob.visible=param1;
         this.nugewe.visible=param1;
         this.interactPanel.visible=param1;
         return;
      }

      public function tradeDone() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.sybej();
         return;
      }

      public function tradeChanged(param1:Tumyriw) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.leronaqy)
         {
            this.leronaqy.tupot(param1.offer_);
         }
         return;
      }

      public function tradeAccepted(param1:Jogov) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.leronaqy)
         {
            this.leronaqy.rumasuhas(param1.myOffer_,param1.yourOffer_);
         }
         return;
      }

      private function zipada(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.sybej();
         return;
      }

      private function sybej() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.leronaqy)
         {
            Gyk.qekecebo(this,this.leronaqy);
            this.leronaqy.removeEventListener(Event.CANCEL,this.zipada);
            this.leronaqy=null;
            this.tarowy(true);
         }
         return;
      }
   }
[/CLASS]
}