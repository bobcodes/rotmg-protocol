package meke
{
   import flash.display.Sprite;
   import tekoh.Gemanyq;
   import flash.geom.ColorTransform;
   import tekoh.Zukot;
   import flash.display.BitmapData;
   import flash.display.Bitmap;
   import povopito.Jodehozut;
   import com.company.util.MoreColorUtil;
   import flash.events.MouseEvent;
   import com.company.util.Kiv;
   import aaa.rotmg.config.UserConfig;
   import nec.Sire;
   import aaa.rotmg.i18n.I18nKeys;
   import raqu.Hujuhy;
   import raqu.Goq;
   import com.company.assembleegameclient.util.TextureRedrawer;


   public class IconButton extends Sprite implements Gemanyq
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function IconButton(param1:BitmapData, param2:String, param3:String) {
         var _loc4_:* = false;
         var _loc5_:* = true;
         this.piwawawiw=new Zukot();
         super();
         this.dyrecam=param1;
         this.hujuf=TextureRedrawer.redraw(this.dyrecam,320/this.dyrecam.width,true,0,0);
         this.buwigyh=new Bitmap(this.hujuf);
         this.buwigyh.x=-12;
         this.buwigyh.y=-12;
         addChild(this.buwigyh);
         this.nyqyqeroz=param3;
         addEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         addEventListener(MouseEvent.MOUSE_OUT,this.onMouseOut);
         this.dosab(param2);
         this.piwawawiw.kol(this);
         this.piwawawiw.tooltip=this.toolTip_;
         return;
      }

      protected static const sujy:ColorTransform = new ColorTransform(1,220/255,133/255);

      public var piwawawiw:Zukot;

      protected var dyrecam:BitmapData;

      protected var hujuf:BitmapData;

      protected var buwigyh:Bitmap;

      protected var nyqyqeroz:String;

      protected var hoqy:ColorTransform = null;

      private var toolTip_:Jodehozut = null;

      private function dosab(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1!="")
         {
            this.toolTip_=new Jodehozut(3552822,10197915,param1,"",200);
         }
         return;
      }

      public function qiziry(param1:ColorTransform) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(param1==this.hoqy)
         {
            return;
         }
         this.hoqy=param1;
         if(this.hoqy==null)
         {
            transform.colorTransform=MoreColorUtil.identity;
         }
         else
         {
            transform.colorTransform=this.hoqy;
         }
         return;
      }

      protected function onMouseOver(param1:MouseEvent) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:String = null;
         this.qiziry(sujy);
         if(this.toolTip_!=null)
         {
            _loc2_=Kiv.dejicusik[UserConfig.data_[this.nyqyqeroz]];
            this.toolTip_.sonydiw(new Sire().setParams(I18nKeys.zimolyke,{hotkey:_loc2_}));
         }
         return;
      }

      protected function onMouseOut(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.qiziry(null);
         return;
      }

      public function zytije(param1:Hujuhy) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.piwawawiw.zytije(param1);
         return;
      }

      public function nivinupo() : Hujuhy {
         return this.piwawawiw.nivinupo();
      }

      public function nuqaqynyp(param1:Goq) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.piwawawiw.nuqaqynyp(param1);
         return;
      }

      public function wab() : Goq {
         return this.piwawawiw.wab();
      }
   }

}