package sydo
{
   import flash.display.Sprite;
   import gafuvy.Pywafejer;
   import flash.geom.ColorTransform;
   import gafuvy.Qyvuw;
   import flash.display.BitmapData;
   import flash.display.Bitmap;
   import mavew.Qyrola;
   import com.company.util.MoreColorUtil;
   import flash.events.MouseEvent;
   import com.company.util.Coluf;
   import com.company.assembleegameclient.parameters.Parameters;
   import jediwip.Kybidu;
   import komi.Vibemod;
   import pomujukir.Cirumy;
   import pomujukir.Boqutujy;
   import com.company.assembleegameclient.util.TextureRedrawer;


   public class IconButton extends Sprite implements Pywafejer
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function IconButton(param1:BitmapData, param2:String, param3:String) {
         var _loc4_:* = true;
         var _loc5_:* = false;
         this.debamipop=new Qyvuw();
         super();
         this.ronivu=param1;
         this.mamevur=TextureRedrawer.redraw(this.ronivu,320/this.ronivu.width,true,0,0);
         this.tyj=new Bitmap(this.mamevur);
         this.tyj.x=-12;
         this.tyj.y=-12;
         addChild(this.tyj);
         this.temog=param3;
         addEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         addEventListener(MouseEvent.MOUSE_OUT,this.onMouseOut);
         this.kyficinad(param2);
         this.debamipop.lubec(this);
         this.debamipop.tooltip=this.toolTip_;
         return;
      }

      protected static const tehobur:ColorTransform = new ColorTransform(1,220/255,133/255);

      public var debamipop:Qyvuw;

      protected var ronivu:BitmapData;

      protected var mamevur:BitmapData;

      protected var tyj:Bitmap;

      protected var temog:String;

      protected var moq:ColorTransform = null;

      private var toolTip_:Qyrola = null;

      private function kyficinad(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(param1!="")
         {
            this.toolTip_=new Qyrola(3552822,10197915,param1,"",200);
         }
         return;
      }

      public function jywor(param1:ColorTransform) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1==this.moq)
         {
            return;
         }
         this.moq=param1;
         if(this.moq==null)
         {
            transform.colorTransform=MoreColorUtil.identity;
         }
         else
         {
            transform.colorTransform=this.moq;
         }
         return;
      }

      protected function onMouseOver(param1:MouseEvent) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:String = null;
         this.jywor(tehobur);
         if(this.toolTip_!=null)
         {
            _loc2_=Coluf.faj[Parameters.data_[this.temog]];
            this.toolTip_.kenadyb(new Kybidu().setParams(Vibemod.fisacy,{hotkey:_loc2_}));
         }
         return;
      }

      protected function onMouseOut(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.jywor(null);
         return;
      }

      public function sijobalyv(param1:Cirumy) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.debamipop.sijobalyv(param1);
         return;
      }

      public function fifelap() : Cirumy {
         return this.debamipop.fifelap();
      }

      public function labyvofo(param1:Boqutujy) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.debamipop.labyvofo(param1);
         return;
      }

      public function wuducocac() : Boqutujy {
         return this.debamipop.wuducocac();
      }
   }

}