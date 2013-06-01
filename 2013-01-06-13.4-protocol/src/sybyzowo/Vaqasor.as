package sybyzowo
{
[CLASS1110]   import flash.display.Sprite;
   import flash.geom.ColorTransform;
   import flash.display.BitmapData;
   import flash.display.Bitmap;
   import pudev.Capitu;
   import com.company.util.MoreColorUtil;
   import com.company.util.Dyzonoto;
   import com.company.assembleegameclient.util.TextureRedrawer;
   import flash.events.MouseEvent;
   import flash.filters.DropShadowFilter;
   import totuhare.Zufi;


   public class Vaqasor extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Vaqasor(param1:BitmapData, param2:uint, param3:String) {
         var _loc4_:* = true;
         var _loc5_:* = false;
         super();
         this.dukape=param1;
         this.kaninifiz=TextureRedrawer.redraw(param1,this.qodyret(),true,0,0);
         this.mad=new Bitmap(this.kaninifiz);
         this.mad.filters=[new DropShadowFilter(0,0,0)];
         this.mad.x=-12;
         this.mad.y=-12;
         addChild(this.mad);
         this.text_=new Capitu().setSize(18).setColor(param2);
         this.text_.setBold(true);
         this.text_.setStringBuilder(new Zufi().setParams(param3));
         this.text_.filters=[new DropShadowFilter(0,0,0)];
         this.text_.x=20;
         this.text_.y=-6;
         addChild(this.text_);
         addEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         addEventListener(MouseEvent.MOUSE_OUT,this.onMouseOut);
         return;
      }

      protected static const nyjo:ColorTransform = new ColorTransform(1,220/255,133/255);

      protected var dukape:BitmapData;

      protected var kaninifiz:BitmapData;

      protected var mad:Bitmap;

      protected var text_:Capitu;

      protected var his:ColorTransform = null;

      public function tofijeni(param1:ColorTransform) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:BitmapData = null;
         if(param1==this.his)
         {
            return;
         }
         this.his=param1;
         if(this.his==null)
         {
            this.mad.bitmapData=this.kaninifiz;
            this.text_.transform.colorTransform=MoreColorUtil.identity;
         }
         else
         {
            _loc2_=Dyzonoto.zategokog(this.dukape,this.his);
            _loc2_=TextureRedrawer.redraw(_loc2_,this.qodyret(),true,0,0);
            this.mad.bitmapData=_loc2_;
            this.text_.transform.colorTransform=this.his;
         }
         return;
      }

      protected function onMouseOver(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.tofijeni(nyjo);
         return;
      }

      protected function onMouseOut(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.tofijeni(null);
         return;
      }

      protected function qodyret() : int {
         return 40/this.dukape.width/8;
      }
   }
[/CLASS]
}