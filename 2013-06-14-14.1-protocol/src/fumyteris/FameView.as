package fumyteris
{
   import flash.display.Sprite;
   import mukyrosu.Qanyduk;
   import flash.display.DisplayObjectContainer;
   import flash.display.Bitmap;
   import hivysif.Guzowoja;
   import waryp.Bubyvu;
   import waryp.Rimyfo;
   import waryp.Nulejufyl;
   import flash.display.BitmapData;
   import buryq.GTween;
   import dorepoji.Kadido;
   import flash.text.TextFieldAutoSize;
   import flash.filters.DropShadowFilter;
   import com.company.assembleegameclient.objects.ObjectLibrary;
   import jediwip.Kybidu;
   import komi.Vibemod;
   import com.company.rotmg.graphics.FameIconBackgroundDesign;
   import flash.geom.Rectangle;
   import com.company.assembleegameclient.util.Cinihel;
   import com.company.util.BitmapUtil;
   import com.company.rotmg.graphics.ScreenGraphic;
   import qymoho.Taziw;
   import qykifavol.Rulavowaz;
   import flash.events.MouseEvent;


   public class FameView extends Sprite
   {
      public function FameView() {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         addChild(new Taziw());
         addChild(this.jitun=new Sprite());
         addChild(this.juhyn=new Bitmap());
         this.lilypypu=new Nulejufyl(Vibemod.cacuta,36,false);
         this.lilypypu.setAutoSize(TextFieldAutoSize.CENTER);
         this.lilypypu.setVerticalAlign(Guzowoja.MIDDLE);
         this.closed=new Rulavowaz(this.lilypypu,MouseEvent.CLICK);
         return;
      }

      public var closed:Qanyduk;

      private var jitun:DisplayObjectContainer;

      private var juhyn:Bitmap;

      private var title:Guzowoja;

      private var date:Guzowoja;

      private var wolanu:Bubyvu;

      private var kyladocu:Rimyfo;

      private var lilypypu:Nulejufyl;

      private var zekarupuk:Boolean;

      private var fagukicor:Boolean;

      private var kykev:Boolean;

      public function hasosyf(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.zekarupuk=param1;
         return;
      }

      public function qojedyna(param1:BitmapData) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.juhyn.bitmapData=param1;
         var _loc2_:GTween = new GTween(this.juhyn,2,{alpha:0});
         _loc2_.onComplete=this.pacyry;
         Kadido.play("death_screen");
         return;
      }

      public function fugij() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.juhyn.bitmapData=null;
         return;
      }

      private function pacyry(param1:GTween) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         removeChild(this.juhyn);
         this.fagukicor=true;
         if(this.kykev)
         {
            this.soza();
         }
         return;
      }

      public function fomik(param1:String, param2:int, param3:int) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         this.title=new Guzowoja().setSize(38).setColor(13421772);
         this.title.setBold(true).setAutoSize(TextFieldAutoSize.CENTER);
         this.title.filters=[new DropShadowFilter(0,0,0,0.5,12,12)];
         var _loc4_:String = ObjectLibrary.kipanudad[param3];
         this.title.setStringBuilder(new Kybidu().setParams(Vibemod.vefo,
            {
               name:param1,
               level:param2,
               type:_loc4_
            }
         ));
         this.title.x=stage.stageWidth/2;
         this.title.y=225;
         this.jitun.addChild(this.title);
         return;
      }

      public function mabogur(param1:String, param2:String) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         this.date=new Guzowoja().setSize(24).setColor(13421772);
         this.date.setBold(true).setAutoSize(TextFieldAutoSize.CENTER);
         this.date.filters=[new DropShadowFilter(0,0,0,0.5,12,12)];
         var _loc3_:Kybidu = new Kybidu();
         if(param2)
         {
            _loc3_.setParams(Vibemod.hanerobo,
               {
                  date:param1,
                  killer:param2
               }
            );
         }
         else
         {
            _loc3_.setParams(Vibemod.nafakec,{date:this.date});
         }
         this.date.setStringBuilder(_loc3_);
         this.date.x=stage.stageWidth/2;
         this.date.y=272;
         this.jitun.addChild(this.date);
         return;
      }

      public function setIcon(param1:BitmapData) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
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
         this.jitun.addChild(_loc2_);
         return;
      }

      public function rapy(param1:int, param2:XML) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         this.wolanu=new Bubyvu(new Rectangle(0,0,784,150),param2);
         this.wolanu.x=8;
         this.wolanu.y=316;
         addChild(this.wolanu);
         this.jitun.addChild(this.wolanu);
         var _loc3_:BitmapData = Cinihel.cinuwylo();
         _loc3_=BitmapUtil.kodopomid(_loc3_,6,6,_loc3_.width-12,_loc3_.height-12);
         this.kyladocu=new Rimyfo(24,13421772,16762880,Vibemod.himapi,null,0,param1,"","",new Bitmap(_loc3_));
         this.kyladocu.x=10;
         this.kyladocu.y=470;
         this.jitun.addChild(this.kyladocu);
         this.kykev=true;
         if(!this.zekarupuk||(this.fagukicor))
         {
            this.soza();
         }
         return;
      }

      private function soza() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.jitun.addChild(new ScreenGraphic());
         this.lilypypu.x=stage.stageWidth/2;
         this.lilypypu.y=550;
         this.jitun.addChild(this.lilypypu);
         if(this.zekarupuk)
         {
            this.wolanu.ryro();
         }
         else
         {
            this.wolanu.vevosyjem();
         }
         return;
      }
   }

}