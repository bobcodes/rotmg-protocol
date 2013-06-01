package sakugyt
{
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   import flash.display.Shape;
   import __AS3__.vec.Vector;
   import com.company.assembleegameclient.ui.Tira;
   import flash.utils.getTimer;
   import flash.events.Event;
   import flash.display.DisplayObject;
   import aaa.rotmg.i18n.I18nKeys;
   import com.company.assembleegameclient.util.Wagoq;
   import flash.display.BitmapData;
   import com.company.util.BitmapUtil;
   import flash.display.Bitmap;


   public class Cafaram extends Sprite
   {
      public function Cafaram(param1:Rectangle, param2:XML) {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc4_:XML = null;
         this.mask_=new Shape();
         this.rokydepaf=new Sprite();
         this.gyg=new Vector.<Kosykys>();
         super();
         this.rect_=param1;
         graphics.lineStyle(1,4802889,2);
         graphics.drawRect(this.rect_.x+1,this.rect_.y+1,this.rect_.width-2,this.rect_.height-2);
         graphics.lineStyle();
         this.japosyzur=new Tira(16,this.rect_.height);
         this.japosyzur.addEventListener(Event.CHANGE,this.viva);
         this.mask_.graphics.beginFill(16777215,1);
         this.mask_.graphics.drawRect(this.rect_.x,this.rect_.y,this.rect_.width,this.rect_.height);
         this.mask_.graphics.endFill();
         addChild(this.mask_);
         mask=this.mask_;
         addChild(this.rokydepaf);
         this.mop(I18nKeys.qivuqiduq,null,0,param2.Shots,false,5746018);
         if(int(param2.Shots)!=0)
         {
            this.mop(I18nKeys.vor,null,0,100*Number(param2.ShotsThatDamage)/Number(param2.Shots),true,5746018,"","%");
         }
         this.mop(I18nKeys.ralafu,null,0,param2.TilesUncovered,false,5746018);
         this.mop(I18nKeys.wohon,null,0,param2.MonsterKills,false,5746018);
         this.mop(I18nKeys.vetiwyhic,null,0,param2.GodKills,false,5746018);
         this.mop(I18nKeys.poqovat,null,0,param2.OryxKills,false,5746018);
         this.mop(I18nKeys.nodakuv,null,0,param2.QuestsCompleted,false,5746018);
         this.mop(I18nKeys.fyvydyj,null,0,int(param2.PirateCavesCompleted)+int(param2.UndeadLairsCompleted)+int(param2.AbyssOfDemonsCompleted)+int(param2.SnakePitsCompleted)+int(param2.SpiderDensCompleted)+int(param2.SpriteWorldsCompleted)+int(param2.TombsCompleted),false,5746018);
         this.mop(I18nKeys.noja,null,0,param2.LevelUpAssists,false,5746018);
         var _loc3_:BitmapData = Wagoq.qem();
         _loc3_=BitmapUtil.wygoci(_loc3_,6,6,_loc3_.width-12,_loc3_.height-12);
         this.mop(I18nKeys.noqoz,null,0,param2.BaseFame,true,16762880,"","",new Bitmap(_loc3_));
         for each (_loc4_ in param2.Bonus)
         {
            this.mop(_loc4_.@id,_loc4_.@desc,_loc4_.@level,int(_loc4_),true,16762880,"+","",new Bitmap(_loc3_));
         }
         return;
      }

      private var rect_:Rectangle;

      private var mask_:Shape;

      private var rokydepaf:Sprite;

      private var gyg:Vector.<Kosykys>;

      private var japosyzur:Tira;

      private var startTime_:int;

      public function pege() : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:Kosykys = null;
         this.qugeby();
         this.startTime_=-int.MAX_VALUE;
         for each (_loc1_ in this.gyg)
         {
            _loc1_.gibul();
         }
         return;
      }

      public function qugeby() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.startTime_=getTimer();
         addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         return;
      }

      private function viva(param1:Event) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Number = this.japosyzur.cimubito();
         this.rokydepaf.y=_loc2_*(this.rect_.height-this.rokydepaf.height-15)+5;
         return;
      }

      private function mop(param1:String, param2:String, param3:int, param4:int, param5:Boolean, param6:uint, param7:String="", param8:String="", param9:DisplayObject=null) : void {
         var _loc10_:* = false;
         var _loc11_:* = true;
         if(param4==0&&!param5)
         {
            return;
         }
         this.gyg.push(new Kosykys(20,11776947,param6,param1,param2,param3,param4,param7,param8,param9));
         return;
      }

      private function onEnterFrame(param1:Event) : void {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc3_:* = NaN;
         var _loc6_:Kosykys = null;
         var _loc2_:Number = this.startTime_+2000*(this.gyg.length-1)/2;
         _loc3_=getTimer();
         var _loc4_:int = Math.min(this.gyg.length,2*(getTimer()-this.startTime_)/2000+1);
         var _loc5_:* = 0;
         while(_loc5_<_loc4_)
         {
            _loc6_=this.gyg[_loc5_];
            _loc6_.y=28*_loc5_;
            this.rokydepaf.addChild(_loc6_);
            _loc5_++;
         }
         this.rokydepaf.y=this.rect_.height-this.rokydepaf.height-10;
         if(_loc3_>_loc2_+1000)
         {
            this.qepemu();
            dispatchEvent(new Event(Event.COMPLETE));
            removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         }
         return;
      }

      private function qepemu() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         graphics.clear();
         graphics.lineStyle(1,4802889,2);
         graphics.drawRect(this.rect_.x+1,this.rect_.y+1,this.rect_.width-26,this.rect_.height-2);
         graphics.lineStyle();
         this.japosyzur.x=this.rect_.width-16;
         this.japosyzur.jyqecubi(this.mask_.height,this.rokydepaf.height);
         this.japosyzur.ricos(1);
         addChild(this.japosyzur);
         return;
      }
   }

}