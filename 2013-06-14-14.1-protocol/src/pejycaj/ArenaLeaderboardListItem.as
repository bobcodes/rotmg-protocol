package pejycaj
{
   import flash.display.Sprite;
   import flash.display.Bitmap;
   import bivecenym.Hupoma;
   import haj.Cihoni;
   import mukyrosu.Qanyduk;
   import haj.Sevuvomyn;
   import hivysif.Liwyny;
   import jediwip.Vofezuzy;
   import jediwip.Kybidu;
   import flash.events.MouseEvent;
   import wohy.Caki;
   import komi.Vibemod;
   import fanij.Cun;
   import flash.filters.DropShadowFilter;
   import sijizoh.Duq;
   import flash.text.TextFieldAutoSize;


   public class ArenaLeaderboardListItem extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function ArenaLeaderboardListItem() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.pogurad=new Sprite();
         this.farilucum=new Sprite();
         this.mucunir=new Bitmap();
         this.pide=this.hymuqyvoc();
         this.suqabyh=this.loq();
         this.playerName=this.loq();
         this.waveNumber=this.loq();
         this.fygyzy=this.loq();
         this.background=this.wutas();
         this.nekukupyb=new Vofezuzy();
         this.mowirak=new Vofezuzy();
         this.nagyvy=new Kybidu();
         this.pirirupa=new Vofezuzy();
         super();
         this.resemuci=Duq.pamazo().getInstance(Sevuvomyn);
         this.suqabyh.setAutoSize(TextFieldAutoSize.RIGHT);
         this.jifajenuj();
         this.addEventListeners();
         return;
      }

      private static const HEIGHT:int = 60;

      private var pogurad:Sprite;

      private var farilucum:Sprite;

      private var mucunir:Bitmap;

      private var kosoqaqu:Hupoma;

      private var fuhyn:Cihoni;

      public const qotufofa:Qanyduk = new Qanyduk(Sprite);

      public const hideTooltip:Qanyduk = new Qanyduk();

      public var debezysog:String = "";

      private var rank:int = 0;

      private var gejuto:String = "";

      private var niraco:Bitmap;

      private var pide:Sprite;

      private var resemuci:Sevuvomyn;

      private var suqabyh:Liwyny;

      private var playerName:Liwyny;

      private var waveNumber:Liwyny;

      private var fygyzy:Liwyny;

      private var background:Sprite;

      private var liligi:Boolean = false;

      private var nekukupyb:Vofezuzy;

      private var mowirak:Vofezuzy;

      private var nagyvy:Kybidu;

      private var pirirupa:Vofezuzy;

      private function addEventListeners() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         addEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         addEventListener(MouseEvent.MOUSE_OUT,this.onMouseOut);
         this.pogurad.addEventListener(MouseEvent.MOUSE_OVER,this.ryri);
         this.pogurad.addEventListener(MouseEvent.MOUSE_OUT,this.gyped);
         this.farilucum.addEventListener(MouseEvent.MOUSE_OVER,this.kufozacoc);
         this.farilucum.addEventListener(MouseEvent.MOUSE_OUT,this.qonasag);
         return;
      }

      private function jifajenuj() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         addChild(this.background);
         addChild(this.pogurad);
         addChild(this.pide);
         addChild(this.farilucum);
         addChild(this.suqabyh);
         addChild(this.playerName);
         addChild(this.waveNumber);
         addChild(this.fygyzy);
         this.pogurad.addChild(this.mucunir);
         return;
      }

      private function gyped(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.hideTooltip.dispatch();
         return;
      }

      private function ryri(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.kosoqaqu)
         {
            this.qotufofa.dispatch(this.kosoqaqu);
         }
         return;
      }

      private function qonasag(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.hideTooltip.dispatch();
         return;
      }

      private function kufozacoc(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.kosoqaqu)
         {
            this.qotufofa.dispatch(this.fuhyn);
         }
         return;
      }

      private function onMouseOut(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.liligi)
         {
            this.background.alpha=0;
         }
         return;
      }

      private function onMouseOver(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.liligi)
         {
            this.background.alpha=1;
         }
         return;
      }

      public function apply(param1:Caki, param2:Boolean) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.liligi=!(param1==null);
         if(param1)
         {
            this.byniti(param1);
            this.zarisy(param1);
            if((param1.rank)&&(param2))
            {
               this.suqabyh.visible=true;
               this.suqabyh.setStringBuilder(this.nekukupyb.setString(param1.rank+"."));
            }
            else
            {
               this.suqabyh.visible=false;
            }
            if(this.niraco)
            {
               this.tifaq();
            }
            if(param1.pet)
            {
               this.rorazaza(param1);
            }
            this.rank=param1.rank;
            this.gejuto=param1.name;
            this.setColor();
         }
         else
         {
            this.clear();
         }
         this.align();
         return;
      }

      private function zarisy(param1:Caki) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.waveNumber.setStringBuilder(this.nagyvy.setParams(Vibemod.vugesevi,{waveNumber:(param1.pig-1).toString()}));
         this.fygyzy.setStringBuilder(this.pirirupa.setString(this.hetuwu(Math.floor(param1.rygy))));
         return;
      }

      private function byniti(param1:Caki) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.mucunir.bitmapData=param1.diry;
         this.kosoqaqu=new Hupoma(param1);
         this.playerName.setStringBuilder(this.mowirak.setString(param1.name));
         return;
      }

      private function rorazaza(param1:Caki) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.fuhyn=new Cihoni(param1.pet);
         this.niraco=this.neqoruge(param1.pet,48);
         this.farilucum.addChild(this.niraco);
         this.pide.visible=true;
         return;
      }

      private function tifaq() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.farilucum.removeChild(this.niraco);
         this.fuhyn=null;
         this.niraco=null;
         this.pide.visible=false;
         return;
      }

      private function neqoruge(param1:Cun, param2:int) : Bitmap {
         return new Bitmap(this.resemuci.vimuh(param1,param2));
      }

      public function setColor() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:uint = 16777215;
         if(this.gejuto==this.debezysog)
         {
            _loc1_=16567065;
         }
         else
         {
            if(this.rank==1)
            {
               _loc1_=16777103;
            }
         }
         this.playerName.setColor(_loc1_);
         this.waveNumber.setColor(_loc1_);
         this.fygyzy.setColor(_loc1_);
         this.suqabyh.setColor(_loc1_);
         return;
      }

      public function clear() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.mucunir.bitmapData=null;
         this.playerName.setStringBuilder(this.mowirak.setString(""));
         this.waveNumber.setStringBuilder(this.nagyvy.setParams(""));
         this.fygyzy.setStringBuilder(this.pirirupa.setString(""));
         this.suqabyh.setStringBuilder(this.nekukupyb.setString(""));
         if(this.niraco)
         {
            this.tifaq();
         }
         this.niraco=null;
         this.pide.visible=false;
         this.rank=0;
         this.gejuto="";
         return;
      }

      private function loq() : Liwyny {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Liwyny = new Liwyny();
         _loc1_.setBold(true).setSize(24);
         _loc1_.filters=[new DropShadowFilter(0,0,0,1,8,8)];
         return _loc1_;
      }

      private function wutas() : Sprite {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Sprite = new Sprite();
         _loc1_.graphics.beginFill(0,0.5);
         _loc1_.graphics.drawRect(0,0,750,60);
         _loc1_.graphics.endFill();
         _loc1_.alpha=0;
         return _loc1_;
      }

      private function hymuqyvoc() : Sprite {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Sprite = new Sprite();
         _loc1_.graphics.beginFill(5526612);
         _loc1_.graphics.drawRoundRect(0,0,40,40,10,10);
         _loc1_.graphics.endFill();
         _loc1_.visible=false;
         return _loc1_;
      }

      private function hetuwu(param1:int) : String {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc2_:int = Math.floor(param1/60);
         var _loc3_:String = (_loc2_<10?"0":"")+_loc2_.toString();
         var _loc4_:int = param1%60;
         var _loc5_:String = (_loc4_<10?"0":"")+_loc4_.toString();
         return _loc3_+":"+_loc5_;
      }

      private function align() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.suqabyh.x=75;
         this.suqabyh.y=HEIGHT/2-this.suqabyh.height/2;
         this.mucunir.x=110;
         this.mucunir.y=HEIGHT/2-this.mucunir.height/2-3;
         if(this.niraco)
         {
            this.niraco.x=170;
            this.niraco.y=HEIGHT/2-this.niraco.height/2;
            this.pide.x=175;
            this.pide.y=HEIGHT/2-this.pide.height/2;
         }
         this.playerName.x=230;
         this.playerName.y=HEIGHT/2-this.playerName.height/2;
         this.waveNumber.x=485;
         this.waveNumber.y=HEIGHT/2-this.waveNumber.height/2;
         this.fygyzy.x=635;
         this.fygyzy.y=HEIGHT/2-this.fygyzy.height/2;
         return;
      }
   }

}