package nyvubeze
{
   import flash.display.Sprite;
   import flash.geom.ColorTransform;
   import flash.display.BitmapData;
   import flash.display.Bitmap;
   import movimet.Lufub;
   import com.company.util.MoreColorUtil;
   import com.company.util.Zet;
   import com.company.assembleegameclient.util.TextureRedrawer;
   import flash.events.MouseEvent;
   import flash.filters.DropShadowFilter;
   import nec.Sire;


   public class Wuzyq extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Wuzyq(param1:BitmapData, param2:uint, param3:String) {
         var _loc4_:* = true;
         var _loc5_:* = false;
         super();
         this.dyrecam=param1;
         this.hujuf=TextureRedrawer.redraw(param1,this.zuqifud(),true,0,0);
         this.buwigyh=new Bitmap(this.hujuf);
         this.buwigyh.filters=[new DropShadowFilter(0,0,0)];
         this.buwigyh.x=-12;
         this.buwigyh.y=-12;
         addChild(this.buwigyh);
         this.text_=new Lufub().setSize(18).setColor(param2);
         this.text_.setBold(true);
         this.text_.setStringBuilder(new Sire().setParams(param3));
         this.text_.filters=[new DropShadowFilter(0,0,0)];
         this.text_.x=20;
         this.text_.y=-6;
         addChild(this.text_);
         addEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         addEventListener(MouseEvent.MOUSE_OUT,this.onMouseOut);
         return;
      }

      protected static const sujy:ColorTransform = new ColorTransform(1,220/255,133/255);

      protected var dyrecam:BitmapData;

      protected var hujuf:BitmapData;

      protected var buwigyh:Bitmap;

      protected var text_:Lufub;

      protected var hoqy:ColorTransform = null;

      public function qiziry(param1:ColorTransform) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:BitmapData = null;
         if(param1==this.hoqy)
         {
            return;
         }
         this.hoqy=param1;
         if(this.hoqy==null)
         {
            this.buwigyh.bitmapData=this.hujuf;
            this.text_.transform.colorTransform=MoreColorUtil.identity;
         }
         else
         {
            _loc2_=Zet.juwyc(this.dyrecam,this.hoqy);
            _loc2_=TextureRedrawer.redraw(_loc2_,this.zuqifud(),true,0,0);
            this.buwigyh.bitmapData=_loc2_;
            this.text_.transform.colorTransform=this.hoqy;
         }
         return;
      }

      protected function onMouseOver(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.qiziry(sujy);
         return;
      }

      protected function onMouseOut(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.qiziry(null);
         return;
      }

      protected function zuqifud() : int {
         return 40/this.dyrecam.width/8;
      }
   }

}