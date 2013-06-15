package waryp
{
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   import flash.display.Shape;
   import __AS3__.vec.Vector;
   import com.company.assembleegameclient.ui.Gequrenaj;
   import flash.utils.getTimer;
   import flash.events.Event;
   import flash.display.DisplayObject;
   import komi.Vibemod;
   import com.company.assembleegameclient.util.Cinihel;
   import flash.display.BitmapData;
   import com.company.util.BitmapUtil;
   import flash.display.Bitmap;


   public class Bubyvu extends Sprite
   {
      public function Bubyvu(param1:Rectangle, param2:XML) {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc4_:XML = null;
         this.mask_=new Shape();
         this.wagopy=new Sprite();
         this.dati=new Vector.<Rimyfo>();
         super();
         this.rect_=param1;
         graphics.lineStyle(1,4802889,2);
         graphics.drawRect(this.rect_.x+1,this.rect_.y+1,this.rect_.width-2,this.rect_.height-2);
         graphics.lineStyle();
         this.vudaryzo=new Gequrenaj(16,this.rect_.height);
         this.vudaryzo.addEventListener(Event.CHANGE,this.pejyv);
         this.mask_.graphics.beginFill(16777215,1);
         this.mask_.graphics.drawRect(this.rect_.x,this.rect_.y,this.rect_.width,this.rect_.height);
         this.mask_.graphics.endFill();
         addChild(this.mask_);
         mask=this.mask_;
         addChild(this.wagopy);
         this.riwosybo(Vibemod.benyhe,null,0,param2.Shots,false,5746018);
         if(int(param2.Shots)!=0)
         {
            this.riwosybo(Vibemod.nenyn,null,0,100*Number(param2.ShotsThatDamage)/Number(param2.Shots),true,5746018,"","%");
         }
         this.riwosybo(Vibemod.zeq,null,0,param2.TilesUncovered,false,5746018);
         this.riwosybo(Vibemod.caq,null,0,param2.MonsterKills,false,5746018);
         this.riwosybo(Vibemod.mevesavi,null,0,param2.GodKills,false,5746018);
         this.riwosybo(Vibemod.mody,null,0,param2.OryxKills,false,5746018);
         this.riwosybo(Vibemod.fyz,null,0,param2.QuestsCompleted,false,5746018);
         this.riwosybo(Vibemod.bahete,null,0,int(param2.PirateCavesCompleted)+int(param2.UndeadLairsCompleted)+int(param2.AbyssOfDemonsCompleted)+int(param2.SnakePitsCompleted)+int(param2.SpiderDensCompleted)+int(param2.SpriteWorldsCompleted)+int(param2.TombsCompleted),false,5746018);
         this.riwosybo(Vibemod.fypojivyb,null,0,param2.LevelUpAssists,false,5746018);
         var _loc3_:BitmapData = Cinihel.cinuwylo();
         _loc3_=BitmapUtil.kodopomid(_loc3_,6,6,_loc3_.width-12,_loc3_.height-12);
         this.riwosybo(Vibemod.mizes,null,0,param2.BaseFame,true,16762880,"","",new Bitmap(_loc3_));
         for each (_loc4_ in param2.Bonus)
         {
            this.riwosybo(_loc4_.@id,_loc4_.@desc,_loc4_.@level,int(_loc4_),true,16762880,"+","",new Bitmap(_loc3_));
         }
         return;
      }

      private var rect_:Rectangle;

      private var mask_:Shape;

      private var wagopy:Sprite;

      private var dati:Vector.<Rimyfo>;

      private var vudaryzo:Gequrenaj;

      private var startTime_:int;

      public function vevosyjem() : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:Rimyfo = null;
         this.ryro();
         this.startTime_=-int.MAX_VALUE;
         for each (_loc1_ in this.dati)
         {
            _loc1_.wupobalu();
         }
         return;
      }

      public function ryro() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.startTime_=getTimer();
         addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         return;
      }

      private function pejyv(param1:Event) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Number = this.vudaryzo.devaqe();
         this.wagopy.y=_loc2_*(this.rect_.height-this.wagopy.height-15)+5;
         return;
      }

      private function riwosybo(param1:String, param2:String, param3:int, param4:int, param5:Boolean, param6:uint, param7:String="", param8:String="", param9:DisplayObject=null) : void {
         var _loc10_:* = true;
         var _loc11_:* = false;
         if(param4==0&&!param5)
         {
            return;
         }
         this.dati.push(new Rimyfo(20,11776947,param6,param1,param2,param3,param4,param7,param8,param9));
         return;
      }

      private function onEnterFrame(param1:Event) : void {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc3_:* = NaN;
         var _loc6_:Rimyfo = null;
         var _loc2_:Number = this.startTime_+2000*(this.dati.length-1)/2;
         _loc3_=getTimer();
         var _loc4_:int = Math.min(this.dati.length,2*(getTimer()-this.startTime_)/2000+1);
         var _loc5_:* = 0;
         while(_loc5_<_loc4_)
         {
            _loc6_=this.dati[_loc5_];
            _loc6_.y=28*_loc5_;
            this.wagopy.addChild(_loc6_);
            _loc5_++;
         }
         this.wagopy.y=this.rect_.height-this.wagopy.height-10;
         if(_loc3_>_loc2_+1000)
         {
            this.pebavipyb();
            dispatchEvent(new Event(Event.COMPLETE));
            removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         }
         return;
      }

      private function pebavipyb() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         graphics.clear();
         graphics.lineStyle(1,4802889,2);
         graphics.drawRect(this.rect_.x+1,this.rect_.y+1,this.rect_.width-26,this.rect_.height-2);
         graphics.lineStyle();
         this.vudaryzo.x=this.rect_.width-16;
         this.vudaryzo.vyhojig(this.mask_.height,this.wagopy.height);
         this.vudaryzo.quwakeco(1);
         addChild(this.vudaryzo);
         return;
      }
   }

}