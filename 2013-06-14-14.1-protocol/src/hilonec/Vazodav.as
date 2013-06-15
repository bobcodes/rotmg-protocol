package hilonec
{
   import flash.display.Sprite;
   import flash.geom.ColorTransform;
   import flash.display.BitmapData;
   import flash.display.Bitmap;
   import hivysif.Guzowoja;
   import com.company.util.MoreColorUtil;
   import com.company.util.Zurawi;
   import com.company.assembleegameclient.util.TextureRedrawer;
   import flash.events.MouseEvent;
   import flash.filters.DropShadowFilter;
   import jediwip.Kybidu;


   public class Vazodav extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Vazodav(param1:BitmapData, param2:uint, param3:String) {
         var _loc4_:* = true;
         var _loc5_:* = false;
         super();
         this.ronivu=param1;
         this.mamevur=TextureRedrawer.redraw(param1,this.quqokutys(),true,0,0);
         this.tyj=new Bitmap(this.mamevur);
         this.tyj.filters=[new DropShadowFilter(0,0,0)];
         this.tyj.x=-12;
         this.tyj.y=-12;
         addChild(this.tyj);
         this.text_=new Guzowoja().setSize(18).setColor(param2);
         this.text_.setBold(true);
         this.text_.setStringBuilder(new Kybidu().setParams(param3));
         this.text_.filters=[new DropShadowFilter(0,0,0)];
         this.text_.x=20;
         this.text_.y=-6;
         addChild(this.text_);
         addEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         addEventListener(MouseEvent.MOUSE_OUT,this.onMouseOut);
         return;
      }

      protected static const tehobur:ColorTransform = new ColorTransform(1,220/255,133/255);

      protected var ronivu:BitmapData;

      protected var mamevur:BitmapData;

      protected var tyj:Bitmap;

      protected var text_:Guzowoja;

      protected var moq:ColorTransform = null;

      public function jywor(param1:ColorTransform) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:BitmapData = null;
         if(param1==this.moq)
         {
            return;
         }
         this.moq=param1;
         if(this.moq==null)
         {
            this.tyj.bitmapData=this.mamevur;
            this.text_.transform.colorTransform=MoreColorUtil.identity;
         }
         else
         {
            _loc2_=Zurawi.kymyr(this.ronivu,this.moq);
            _loc2_=TextureRedrawer.redraw(_loc2_,this.quqokutys(),true,0,0);
            this.tyj.bitmapData=_loc2_;
            this.text_.transform.colorTransform=this.moq;
         }
         return;
      }

      protected function onMouseOver(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.jywor(tehobur);
         return;
      }

      protected function onMouseOut(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.jywor(null);
         return;
      }

      protected function quqokutys() : int {
         return 40/this.ronivu.width/8;
      }
   }

}