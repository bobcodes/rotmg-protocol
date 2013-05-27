package biqacufo
{
   import flash.display.Sprite;
   import tekoh.Gemanyq;
   import tekoh.Zukot;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import movimet.Lufub;
   import povopito.Jodehozut;
   import raqu.Hujuhy;
   import raqu.Goq;
   import flash.geom.Rectangle;
   import aaa.rotmg.i18n.I18nKeys;
   import com.company.assembleegameclient.util.TextureRedrawer;
   import com.company.util.AssetLibrary;
   import jybazigiq.Litewev;
   import nec.Sire;
   import flash.filters.DropShadowFilter;


   public class GiftStatusDisplay extends Sprite implements Gemanyq
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function GiftStatusDisplay() {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:Rectangle = null;
         var _loc2_:* = 0;
         this.piwawawiw=new Zukot();
         this.tooltip=new Jodehozut(3552822,10197915,null,I18nKeys.waweqit,200);
         super();
         mouseChildren=false;
         this.bodako=TextureRedrawer.redraw(AssetLibrary.jeqycu(nuqewilyw,vuvahy),40,true,0,0);
         this.background=Litewev.jeroqonaw();
         this.fod=new Bitmap(this.bodako);
         this.fod.x=-5;
         this.fod.y=-8;
         this.text=new Lufub().setSize(16).setColor(16777215);
         this.text.setStringBuilder(new Sire().setParams(I18nKeys.gopedihypa));
         this.text.filters=[new DropShadowFilter(0,0,0,1,4,4,2)];
         this.text.setVerticalAlign(Lufub.BOTTOM);
         this.piwawawiw.kol(this);
         this.piwawawiw.tooltip=this.tooltip;
         this.jehulak();
         _loc1_=this.fod.getBounds(this);
         _loc2_=10;
         this.text.x=_loc1_.right-_loc2_;
         this.text.y=_loc1_.bottom-_loc2_;
         return;
      }

      public static const nuqewilyw:String = "lofiObj2";

      public static const vuvahy:int = 127;

      public static const lejohufyf:Number = 110;

      public static const rimibo:Number = 25;

      public static const hopery:Number = 0.4;

      public static const domun:Number = 0;

      public var piwawawiw:Zukot;

      private var fod:Bitmap;

      private var background:Sprite;

      private var bodako:BitmapData;

      private var text:Lufub;

      private var tooltip:Jodehozut;

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

      public function jehulak() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         addChild(this.background);
         addChild(this.text);
         addChild(this.fod);
         return;
      }

      public function vaqonofa() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if((this.background)&&this.background.parent==this)
         {
            removeChild(this.background);
         }
         if((this.text)&&this.text.parent==this)
         {
            removeChild(this.text);
         }
         if((this.fod)&&this.fod.parent==this)
         {
            removeChild(this.fod);
         }
         return;
      }
   }

}