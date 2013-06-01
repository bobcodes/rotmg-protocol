package put
{
[CLASS603]   import flash.display.Sprite;
   import tinava.Dab;
   import flash.display.DisplayObjectContainer;
   import flash.display.Bitmap;
   import pudev.Capitu;
   import qilarag.Vuj;
   import qilarag.Hidovosah;
   import qilarag.Boqurot;
   import flash.display.BitmapData;
   import barotuvy.GTween;
   import gawulu.Cuqicyh;
   import flash.text.TextFieldAutoSize;
   import flash.filters.DropShadowFilter;
   import com.company.assembleegameclient.objects.ObjectLibrary;
   import totuhare.Zufi;
   import haqakel.Kefyfa;
   import com.company.rotmg.graphics.FameIconBackgroundDesign;
   import flash.geom.Rectangle;
   import com.company.assembleegameclient.util.Gugi;
   import com.company.util.BitmapUtil;
   import com.company.rotmg.graphics.ScreenGraphic;
   import rymuhuduh.Cyzan;
   import zehus.Kelapu;
   import flash.events.MouseEvent;


   public class FameView extends Sprite
   {
      public function FameView() {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         addChild(new Cyzan());
         addChild(this.nebydaq=new Sprite());
         addChild(this.jozyjeqy=new Bitmap());
         this.linysobi=new Boqurot(Kefyfa.kigu,36,false);
         this.linysobi.setAutoSize(TextFieldAutoSize.CENTER);
         this.linysobi.setVerticalAlign(Capitu.MIDDLE);
         this.closed=new Kelapu(this.linysobi,MouseEvent.CLICK);
         return;
      }

      public var closed:Dab;

      private var nebydaq:DisplayObjectContainer;

      private var jozyjeqy:Bitmap;

      private var title:Capitu;

      private var date:Capitu;

      private var pileg:Vuj;

      private var ridu:Hidovosah;

      private var linysobi:Boqurot;

      private var zaziwoti:Boolean;

      private var zipu:Boolean;

      private var loto:Boolean;

      public function gezurytol(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.zaziwoti=param1;
         return;
      }

      public function gupocity(param1:BitmapData) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.jozyjeqy.bitmapData=param1;
         var _loc2_:GTween = new GTween(this.jozyjeqy,2,{alpha:0});
         _loc2_.onComplete=this.jos;
         Cuqicyh.play("death_screen");
         return;
      }

      public function noqugupo() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.jozyjeqy.bitmapData=null;
         return;
      }

      private function jos(param1:GTween) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         removeChild(this.jozyjeqy);
         this.zipu=true;
         if(this.loto)
         {
            this.jokyg();
         }
         return;
      }

      public function luvyvosek(param1:String, param2:int, param3:int) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         this.title=new Capitu().setSize(38).setColor(13421772);
         this.title.setBold(true).setAutoSize(TextFieldAutoSize.CENTER);
         this.title.filters=[new DropShadowFilter(0,0,0,0.5,12,12)];
         var _loc4_:String = ObjectLibrary.mafiwape[param3];
         this.title.setStringBuilder(new Zufi().setParams(Kefyfa.kohaq,
            {
               name:param1,
               level:param2,
               type:_loc4_
            }
         ));
         this.title.x=stage.stageWidth/2;
         this.title.y=225;
         this.nebydaq.addChild(this.title);
         return;
      }

      public function bume(param1:String, param2:String) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         this.date=new Capitu().setSize(24).setColor(13421772);
         this.date.setBold(true).setAutoSize(TextFieldAutoSize.CENTER);
         this.date.filters=[new DropShadowFilter(0,0,0,0.5,12,12)];
         var _loc3_:Zufi = new Zufi();
         if(param2)
         {
            _loc3_.setParams(Kefyfa.vakiqenyh,
               {
                  date:param1,
                  killer:param2
               }
            );
         }
         else
         {
            _loc3_.setParams(Kefyfa.tiqoloj,{date:this.date});
         }
         this.date.setStringBuilder(_loc3_);
         this.date.x=stage.stageWidth/2;
         this.date.y=272;
         this.nebydaq.addChild(this.date);
         return;
      }

      public function setIcon(param1:BitmapData) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:Sprite = null;
         _loc2_=new Sprite();
         var _loc3_:Sprite = new FameIconBackgroundDesign();
         _loc3_.filters=[new DropShadowFilter(0,0,0,0.5,12,12)];
         _loc2_.addChild(_loc3_);
         var _loc4_:Bitmap = new Bitmap(param1);
         _loc4_.x=_loc2_.width/2-_loc4_.width/2;
         _loc4_.y=_loc2_.height/2-_loc4_.height/2;
         _loc2_.addChild(_loc4_);
         _loc2_.y=20;
         _loc2_.x=stage.stageWidth/2-_loc2_.width/2;
         this.nebydaq.addChild(_loc2_);
         return;
      }

      public function teferu(param1:int, param2:XML) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         this.pileg=new Vuj(new Rectangle(0,0,784,150),param2);
         this.pileg.x=8;
         this.pileg.y=316;
         addChild(this.pileg);
         this.nebydaq.addChild(this.pileg);
         var _loc3_:BitmapData = Gugi.sywidufa();
         _loc3_=BitmapUtil.wukofy(_loc3_,6,6,_loc3_.width-12,_loc3_.height-12);
         this.ridu=new Hidovosah(24,13421772,16762880,Kefyfa.fyvof,null,0,param1,"","",new Bitmap(_loc3_));
         this.ridu.x=10;
         this.ridu.y=470;
         this.nebydaq.addChild(this.ridu);
         this.loto=true;
         if(!this.zaziwoti||(this.zipu))
         {
            this.jokyg();
         }
         return;
      }

      private function jokyg() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.nebydaq.addChild(new ScreenGraphic());
         this.linysobi.x=stage.stageWidth/2;
         this.linysobi.y=550;
         this.nebydaq.addChild(this.linysobi);
         if(this.zaziwoti)
         {
            this.pileg.voruzy();
         }
         else
         {
            this.pileg.lydilev();
         }
         return;
      }
   }
[/CLASS]
}