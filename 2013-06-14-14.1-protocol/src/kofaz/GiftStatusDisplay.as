package kofaz
{
   import flash.display.Sprite;
   import gafuvy.Pywafejer;
   import gafuvy.Qyvuw;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import hivysif.Guzowoja;
   import mavew.Qyrola;
   import pomujukir.Cirumy;
   import pomujukir.Boqutujy;
   import flash.geom.Rectangle;
   import komi.Vibemod;
   import com.company.assembleegameclient.util.TextureRedrawer;
   import com.company.util.AssetLibrary;
   import zutudytod.Burijedot;
   import jediwip.Kybidu;
   import flash.filters.DropShadowFilter;


   public class GiftStatusDisplay extends Sprite implements Pywafejer
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function GiftStatusDisplay() {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:Rectangle = null;
         var _loc2_:* = 0;
         this.debamipop=new Qyvuw();
         this.tooltip=new Qyrola(3552822,10197915,null,Vibemod.tokol,200);
         super();
         mouseChildren=false;
         this.geka=TextureRedrawer.redraw(AssetLibrary.tem(fyruke,fyse),40,true,0,0);
         this.background=Burijedot.josymype();
         this.vuc=new Bitmap(this.geka);
         this.vuc.x=-5;
         this.vuc.y=-8;
         this.text=new Guzowoja().setSize(16).setColor(16777215);
         this.text.setStringBuilder(new Kybidu().setParams(Vibemod.lifujufok));
         this.text.filters=[new DropShadowFilter(0,0,0,1,4,4,2)];
         this.text.setVerticalAlign(Guzowoja.BOTTOM);
         this.debamipop.lubec(this);
         this.debamipop.tooltip=this.tooltip;
         this.guramen();
         _loc1_=this.vuc.getBounds(this);
         _loc2_=10;
         this.text.x=_loc1_.right-_loc2_;
         this.text.y=_loc1_.bottom-_loc2_;
         return;
      }

      public static const fyruke:String = "lofiObj2";

      public static const fyse:int = 127;

      public static const duva:Number = 110;

      public static const pyfeqo:Number = 25;

      public static const wyvaha:Number = 0.4;

      public static const dogaq:Number = 0;

      public var debamipop:Qyvuw;

      private var vuc:Bitmap;

      private var background:Sprite;

      private var geka:BitmapData;

      private var text:Guzowoja;

      private var tooltip:Qyrola;

      public function sijobalyv(param1:Cirumy) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
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

      public function guramen() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         addChild(this.background);
         addChild(this.text);
         addChild(this.vuc);
         return;
      }

      public function coqyvem() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if((this.background)&&this.background.parent==this)
         {
            removeChild(this.background);
         }
         if((this.text)&&this.text.parent==this)
         {
            removeChild(this.text);
         }
         if((this.vuc)&&this.vuc.parent==this)
         {
            removeChild(this.vuc);
         }
         return;
      }
   }

}